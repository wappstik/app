import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wappstik/api/auth.dart';
import 'package:wappstik/components/button.dart';
import 'package:wappstik/components/input.dart';
import 'package:wappstik/constants.dart';

class RegisterPages extends StatefulWidget {
  const RegisterPages({super.key});

  @override
  State<RegisterPages> createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages> {
  bool isSecure = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                    'assets/svgs/illustration/fill_form.svg',
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputComponent(
                      icon: Icons.account_circle,
                      hintText: "Enter your full name",
                      controller: nameController),
                  const SizedBox(
                    height: 20,
                  ),
                  InputComponent(
                      icon: Icons.email,
                      hintText: "Enter your email",
                      controller: emailcontroller),
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
                    text: "Register",
                    onPressed: () {
                      AuthApi.register(
                          nameController.text.toString(),
                          emailcontroller.text.toString(),
                          passwordController.text.toString());
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
                        "Already have an account? ",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushReplacementNamed('/login'),
                        child: Text(
                          "Sign in",
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
      ),
    );
  }
}
