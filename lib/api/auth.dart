import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:wappstik/constants.dart';

class AuthApi {
  static void register(String name, String email, String password) async {
    try {
      debugPrint('Name: $name');
      debugPrint('Email: $email');
      debugPrint('Password: $password');

      Response response = await post(Uri.parse('$baseurl/register'), body: {
        'name': name,
        'email': email,
        'password': password
      }, headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      });
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body.toString());
        debugPrint(data.toString());
      } else {
        debugPrint(response.body.toString());
        debugPrint('failed login');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
