import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_ecommerce/models/user_model.dart';

class AuthService {
  String baseUrl = 'https://shamo-backend.buildwithangga.id/api';

  Future<USerModel> register(
      {String? username,
      String? fullname,
      String? email,
      String? password}) async {
    String url = '$baseUrl/register';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': fullname,
      'username': username,
      'email': email,
      'password': password,
    });

    print(body);

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    print(response.body);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      USerModel user = USerModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }

  Future<USerModel> login({String? email, String? password}) async {
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    print(body);
    String url = '$baseUrl/login';
    var response =
        await http.post(Uri.parse(url), headers: headers, body: body);

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      USerModel user = USerModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];
    
      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }
}
