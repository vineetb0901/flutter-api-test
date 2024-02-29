class User {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final int v;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.v,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['_id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      v: json['__v'],
    );
  }
  
  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      '__v': v,
    };
  }
}

class LoginResponse {
  final User user;
  final String token;

  LoginResponse({
    required this.user,
    required this.token,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      user: User.fromJson(json['user']),
      token: json['token'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'user': user.toJson(),
      'token': token,
    };
  }

}
