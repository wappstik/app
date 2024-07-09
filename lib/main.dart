import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'package:wappstik/pages/auth/login.dart';
import 'package:wappstik/pages/auth/register.dart';
import 'package:wappstik/pages/home.dart';
import 'package:wappstik/pages/welcome.dart';
import 'package:wappstik/providers/user.dart';
import 'package:wappstik/themes.dart';

void main() async {
  await GetStorage.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    final isLogged = box.read('isLogged');
    debugPrint(isLogged);

    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UserProvider())],
      child: MaterialApp(
        theme: themeData,
        debugShowCheckedModeBanner: false,
        routes: {
          '/login': (context) => const LoginPages(),
          '/welcome': (context) => const WelcomePages(),
          '/register': (context) => const RegisterPages(),
          '/home': (context) => const HomePages()
        },
        initialRoute: isLogged == 'true' ? '/home' : '/welcome',
      ),
    );
  }
}
