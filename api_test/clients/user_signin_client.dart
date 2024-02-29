import 'dart:convert';

import 'package:faker/faker.dart';
import 'package:http/http.dart';

import '../model/headers/header_model.dart';
import '../model/request/signin_request.dart';
import '../model/response/userResponse/signin_response.dart';
import '../resources/end_points.dart';

class UserSignInClient {
  Future<SignInResponse> postSignIn() async {
    final response = await post(
      Uri.parse(UserUrls.addUser),
      headers: Headers.headers(),
      body: json.encode(SignInRequest().toJson()),
    );
    return SignInResponse.fromJson(json.decode(response.body));
  }
 
}