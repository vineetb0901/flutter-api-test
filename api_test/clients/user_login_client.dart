import 'dart:convert';

import 'package:http/http.dart';

import '../constants/user_details.dart';
import '../model/headers/header_model.dart';
import '../model/request/login_request_model.dart';
import '../model/response/userResponse/login_response_model.dart';
import '../resources/end_points.dart';

class UserLoginClient {
  Future<LoginResponse> postLogin(String email) async {
    final response = await post(
      Uri.parse(UserUrls.loginUser),
      headers: Headers.headers(),
      body: json.encode(LoginRequest(email: LoginCredentials.email).toJson())
    );

    return LoginResponse.fromJson(json.decode(response.body));
  }
}