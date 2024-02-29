class Headers {
  static Map<String, String> authorization(String accessToken) {
    return {'Authorization': 'Bearer $accessToken'};
  }
  static Map<String, String> headers() {
    return {'Content-Type': 'application/json; charset=UTF-8'};
  }
}
