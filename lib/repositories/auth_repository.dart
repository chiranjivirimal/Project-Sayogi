// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthRepository {
  final String baseUrl;

  AuthRepository({required this.baseUrl});

  Future<Map<String, dynamic>> sendOtp(String phone) async {
    final url = Uri.parse('$baseUrl/login');

    try {
      final response = await http.post(
        url,
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: {'phone': phone},
      );

      print('sendOtp response status: ${response.statusCode}');
      print('sendOtp response body: ${response.body}');

      final data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        return {
          'success': true,
          'user_id': data['user_id'] ?? 0,
          'otp': data['otp'] ?? 0,
          'message': data['message'] ?? 'OTP sent successfully',
        };
      } else {
        return {
          'success': false,
          'message': data['message'] ?? 'Failed to send OTP',
        };
      }
    } catch (e) {
      return {
        'success': false,
        'message': 'Network error: ${e.toString()}',
      };
    }
  }

  Future<Map<String, dynamic>> verifyOtp(String phone, String otp, int userId) async {
    final url = Uri.parse('$baseUrl/verify-otp');

    try {
      final response = await http.post(
        url,
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: {
          'phone': phone,
          'otp': otp,
          'user_id': userId.toString(),
        },
      );

      print('verifyOtp response status: ${response.statusCode}');
      print('verifyOtp response body: ${response.body}');

      final data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        return {
          'success': true,
          'token': data['token'],
          'user': data['user'],
          'message': data['message'] ?? 'OTP verified successfully',
        };
      } else {
        return {
          'success': false,
          'message': data['message'] ?? 'OTP verification failed',
        };
      }
    } catch (e) {
      return {
        'success': false,
        'message': 'Network error: ${e.toString()}',
      };
    }
  }
}