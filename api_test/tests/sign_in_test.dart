import 'dart:convert';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';

import '../clients/user_signin_client.dart';
import '../constants/user_details.dart';


void main() {
  group('signIn test', () { 
    test('Should be able to signin', () async {
      final signInResponse = await UserSignInClient().postSignIn();
      print(signInResponse.toJson());
    });
  });
}