// ignore_for_file: avoid_print

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_sayogi/bloc/auth_event.dart';
import 'package:project_sayogi/bloc/auth_state.dart';
import 'package:project_sayogi/repositories/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  final bool debugMode;

  AuthBloc({
    required this.authRepository,
    this.debugMode = false,
  }) : super(AuthInitial()) {
    on<SendOtpRequested>(_onSendOtpRequested);
    on<VerifyOtpRequested>(_onVerifyOtpRequested);
  }

  /// ✅ Send OTP Handler
  Future<void> _onSendOtpRequested(
    SendOtpRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading(loadingMessage: 'Sending OTP...'));

    try {
      if (debugMode) print('📤 Sending OTP to: ${event.phone}');

      final response = await authRepository.sendOtp(event.phone);

      if (debugMode) print('✅ OTP Send Response: $response');

      if (response['success'] == true) {
        final userId = response['user_id'] is int
            ? response['user_id'] as int
            : int.tryParse(response['user_id'].toString()) ?? 0;

        final otp = response['otp'] is int
            ? response['otp'] as int
            : int.tryParse(response['otp'].toString());

        emit(OtpSentSuccess(
          phone: event.phone,
          userId: userId,
          otp: debugMode ? otp : null, // Show OTP only in debug mode
          message: response['message'] ?? 'OTP sent successfully',
        ));
      } else {
        emit(AuthFailure(
          response['message'] ?? 'Failed to send OTP',
          errorCode: response['status_code'] as int? ?? 400,
        ));
      }
    } catch (e, stackTrace) {
      if (debugMode) {
        print('❌ OTP Send Error: $e');
        print(stackTrace);
      }

      emit(AuthFailure(
        'Network error: Please check your connection',
        errorCode: 500,
      ));
    }
  }

  /// ✅ Verify OTP Handler
  Future<void> _onVerifyOtpRequested(
    VerifyOtpRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading(loadingMessage: 'Verifying OTP...'));

    try {
      if (debugMode) {
        print('📥 Verifying OTP ${event.otp} for userId ${event.userId}');
      }

      final response = await authRepository.verifyOtp(
        event.phone,
        event.otp,
        event.userId,
      );

      if (debugMode) print('✅ OTP Verify Response: $response');

      if (response['success'] == true) {
        emit(AuthVerified(
          token: response['token']?.toString() ?? '',
          user: response['user'] as Map<String, dynamic>? ?? {},
          message: response['message'] ?? 'OTP verified successfully',
        ));
      } else {
        emit(AuthFailure(
          response['message'] ?? 'Invalid OTP',
          errorCode: response['status_code'] as int? ?? 401,
        ));
      }
    } catch (e, stackTrace) {
      if (debugMode) {
        print(' OTP Verification Error: $e');
        print(stackTrace);
      }

      emit(AuthFailure(
        'Verification failed: Please try again',
        errorCode: 500,
      ));
    }
  }
}
