import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class ApiConfig {
  String apiBaseUrl;
  String loginUrl;
  String signupUrl;

  ApiConfig({
    required this.apiBaseUrl, 
    required this.loginUrl, 
    required this.signupUrl
  });

  factory ApiConfig.fromJson(Map<String, dynamic> json) {
    return ApiConfig(
      apiBaseUrl: json['api_base_url'],
      loginUrl: json['login_url'],
      signupUrl: json['signup_url'],
    );
  }

  static Future<ApiConfig> load() async {
    String jsonString = await rootBundle.loadString('assets/config.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    return ApiConfig.fromJson(jsonMap);
  }
}
