import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:motocar_project/data/models/user_view_model.dart';
import 'package:motocar_project/utils/api/api_exception.dart';

class ApiClient {
  final String _domain = 'http://127.0.0.1:8000';

  static ApiClient instance() => ApiClient();

  Uri _setUrl(String uri) => Uri.https(_domain, uri);

  Future<http.Response> get(String uri) async {
    final response = await http.get(_setUrl(uri));

    return _processResponse(response);
  }

  Future<http.Response> post(String uri) async {
    final response = await http.post(_setUrl(uri));

    return _processResponse(response);
  }

  http.Response _processResponse(http.Response response) {
    if (response.statusCode > 500) {
      throw ServerException('Servidor no responde');
    }

    return response;
  }

  Future<http.Response> _registerUser(User user, String uri) async {
    try {
      final response = await http.post(_setUrl(uri),
          body: json.encode({
            'name': user.name,
            'email': user.email,
            'password': user.password,
            'phone': user.phone,
          }),
          headers: {
            'Content-Type': 'application/json',
          });
      return _processResponse(response);
    } catch (e) {
      throw Exception('Error during user registration: $e');
    }
  }
}
