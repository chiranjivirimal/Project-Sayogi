
abstract class AuthState {
  
  final String? message;

  const AuthState({this.message});
}

class AuthInitial extends AuthState {
  const AuthInitial() : super();
}


class AuthLoading extends AuthState {
  
  final String? loadingMessage;

  const AuthLoading({this.loadingMessage})
      : super(message: loadingMessage);
}

class AuthFailure extends AuthState {
 
  final String error;

  
  final int? errorCode;

  const AuthFailure(this.error, {this.errorCode})
      : super(message: error);
}


class OtpSentSuccess extends AuthState {
  
  final String phone;

  final int userId;

  
  final int? otp;

  
  final DateTime? expiresAt;

  const OtpSentSuccess({
    required this.phone,
    required this.userId,
    this.otp,
    this.expiresAt,
    super.message,
  });
}

class AuthVerified extends AuthState {
  
  final String token;

  
  final DateTime? expiresAt;

  
  final Map<String, dynamic> user;

  final String? refreshToken;

  
  const AuthVerified({
    required this.token,
    required this.user,
    this.expiresAt,
    this.refreshToken,
    super.message,
  });
}
