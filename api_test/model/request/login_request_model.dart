import '../../constants/user_details.dart';

class LoginRequest {
  String email;
  String password = LoginCredentials.password;

  LoginRequest({
    required this.email,
  });

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };
}