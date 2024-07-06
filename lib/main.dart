import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wappstik/pages/auth/login.dart';
import 'package:wappstik/providers/user.dart';
import 'package:wappstik/themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UserProvider())],
      child: MaterialApp(
        theme: themeData,
        routes: {'/login': (context) => const LoginPages()},
        initialRoute: '/login',
      ),
    );
  }
}
