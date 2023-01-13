import 'package:equatable/equatable.dart';

class LoginModel extends Equatable {
  const LoginModel({
    required this.deviceToken,
    required this.email,
    required this.password,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        email: json['email'] as String,
        password: json['password'] as String,
        deviceToken: json['deviceToken'] as String,
      );

  final String email;
  final String password;
  final String? deviceToken;

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
        'deviceToken': deviceToken,
      };

  @override
  List<Object?> get props => [email, password, deviceToken];
}
