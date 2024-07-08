import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wappstik/constants.dart';

class AuthService {
  AuthService();

  final Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json'
  };

  Future<http.Response> login(String email, String password) async {
    final body = jsonEncode({'email': email, 'password': password});
    String url = '$baseUrl/login';
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    return response;
  }

  Future<http.Response> register(
      String name, String email, String password) async {
    String url = '$baseUrl/register';

    final body =
        jsonEncode({'name': name, 'email': email, 'password': password});

    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    return response;
  }
}
