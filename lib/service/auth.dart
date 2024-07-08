import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wappstik/constants.dart';

class AuthService {
  const AuthService();

  Future<http.Response> register(
      String name, String email, String password) async {
    debugPrint('Name: $name');
    debugPrint('Email: $email');
    debugPrint('Password: $password');
    String url = '$baseurl/register';
    debugPrint(url);
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };
    final body =
        jsonEncode({'name': name, 'email': email, 'password': password});

    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    return response;
  }
}
