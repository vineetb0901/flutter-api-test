class UserUrls {
  static const _userBase = 'https://thinking-tester-contact-list.herokuapp.com';
  static String get userProfile => '$_userBase/users/me';
  static String get addUser => '$_userBase/users';
  static String get updateUser => '$_userBase/users/me';
  static String get logoutUser => '$_userBase/users/logout';
  static String get loginUser => '$_userBase/users/login';
  static String get deleteUser => '$_userBase/users/me';
}

class ContactUrls {
  static const _contactBase = 'https://thinking-tester-contact-list.herokuapp.com/contacts';
  static String get addContacts => '$_contactBase';
  static String get getContactList => '$_contactBase';
  static String get getContact => '$_contactBase/';
  static String get updateContact => '$_contactBase/';
  static String get deleteContact => '$_contactBase/';
}