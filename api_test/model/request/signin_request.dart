import 'package:faker/faker.dart';

import '../../constants/user_details.dart';

class SignInRequest {
  String firstName = faker.person.firstName();
  String lastName = faker.person.lastName();
  String email = faker.internet.email();
  String password = LoginCredentials.password;


  Map<String, dynamic> toJson() {
    return {
       'firstName':firstName,
        'lastName':lastName,
        'email': email,
        'password': password,
    };
  }
}