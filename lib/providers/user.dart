import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String email = '';
  String password = '';
  bool isSecure = false;
}