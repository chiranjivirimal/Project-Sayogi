import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SendOtpRequested extends AuthEvent {
  final String phone;

  SendOtpRequested(this.phone);

  @override
  List<Object?> get props => [phone];
}

class VerifyOtpRequested extends AuthEvent {
  final String phone;
  final String otp;
  final int userId;

  VerifyOtpRequested(this.phone, this.otp, this.userId);

  @override
  List<Object?> get props => [phone, otp];
}
