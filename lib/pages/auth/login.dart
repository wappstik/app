import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart';
import 'package:session_manager/session_manager.dart';
import 'package:wappstik/components/button.dart';
import 'package:wappstik/components/input.dart';
import 'package:wappstik/constants.dart';
import 'package:wappstik/service/auth.dart';
import 'package:wappstik/widgets/modals/error.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  final _formKey = GlobalKey<FormState>();
  AuthService auth = AuthService();

  bool isSecure = true;
  bool isLoading = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    }
    final emailRegExp = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegExp.hasMatch(value)) {
      return 'Enter a valid email';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }
    if (value.length < 4) {
      return 'Password must be at least 4 characters';
    }
    return null;
  }

  Future<void> login(BuildContext context) async {
    setState(() {
      isLoading = true;
    });
    if (_formKey.currentState?.validate() ?? false) {
      Response response = await auth.login(
          emailController.text.toString(), passwordController.text.toString());
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body.toString());
        SessionManager().setString('isLogged', 'true');
        SessionManager().setString('name', data['name']);
        SessionManager().setString('token', data['token']);
        Navigator.of(context).pushReplacementNamed('/home');
      } else if (response.statusCode == 401) {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return ModalErrorWidget(
                  description: 'Wrong email or password',
                  onPressed: () {
                    Navigator.pop(context);
                  });
            });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svgs/illustration/auth.svg',
                  width: 150,
                  height: 150,
                ),
                const SizedBox(
                  height: 20,
                ),
                InputComponent(
                    icon: Icons.email,
                    hintText: "Enter your email",
                    validator: _validateEmail,
                    controller: emailController),
                const SizedBox(
                  height: 20,
                ),
                InputComponent(
                  icon: Icons.lock,
                  hintText: "Enter your password",
                  controller: passwordController,
                  isSecure: isSecure,
                  hasSuffix: true,
                  validator: _validatePassword,
                  suffixAction: IconButton(
                    onPressed: () {
                      setState(() {
                        isSecure = !isSecure;
                      });
                    },
                    icon: Icon(
                      isSecure ? Icons.visibility : Icons.visibility_off,
                      color: WappstikPalette.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ButtonComponent(
                  text: "Login",
                  onPressed: () async {
                    await login(context);
                  },
                  backgroundColor: WappstikPalette.purple,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context)
                          .pushReplacementNamed('/register'),
                      child: Text(
                        "Sign up",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: WappstikPalette.purple),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
