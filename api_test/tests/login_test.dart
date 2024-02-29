import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';

import '../clients/user_login_client.dart';
import '../constants/user_details.dart';

// import '../clients/user_login_client.dart';
// import '../constants/user_details.dart';
// import '../resources/end_points.dart';


void main(){
 group('login test api', () { 
  test('should test login via api', () async {


    final userResponse = await UserLoginClient().postLogin(LoginCredentials.email);
 
    print(userResponse.toJson());
  });
 });
}


