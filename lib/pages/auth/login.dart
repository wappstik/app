import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wappstik/components/button.dart';
import 'package:wappstik/components/input.dart';
import 'package:wappstik/constants.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  bool isSecure = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void loginAction() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
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
                  controller: usernameController),
              const SizedBox(
                height: 20,
              ),
              InputComponent(
                icon: Icons.lock,
                hintText: "Enter your password",
                controller: passwordController,
                isSecure: isSecure,
                hasSuffix: true,
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
                onPressed: () {},
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
                    onTap: () =>
                        Navigator.of(context).pushReplacementNamed('/register'),
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
    ));
  }
}
