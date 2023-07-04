import 'dart:convert';
import 'package:http/http.dart' as http;
import '../services/session_manager.dart';

class AuthService {
  static const String baseUrl = 'https://your-php-backend.com/api';

  Future<String?> login(String email, String password) async {
    final response = await http.post(Uri.parse('$baseUrl/login'), body: {
      'email': email,
      'password': password,
    });

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      final token = jsonResponse['token'];

      final sessionManager = SessionManager();
      await sessionManager.saveToken(token);

      return token;
    } else {
      throw Exception('Login failed');
    }
  }

  Future<void> logout() async {
    final sessionManager = SessionManager();
    await sessionManager.deleteToken();
  }
}
