import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart';
import 'package:wappstik/components/button.dart';
import 'package:wappstik/components/input.dart';
import 'package:wappstik/constants.dart';
import 'package:wappstik/service/auth.dart';
import 'package:wappstik/widgets/modals/success.dart';

class RegisterPages extends StatefulWidget {
  const RegisterPages({super.key});

  @override
  State<RegisterPages> createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages> {
  final _formKey = GlobalKey<FormState>();
  AuthService auth = const AuthService();

  bool isSecure = true;
  bool isLoading = false;
  TextEditingController nameController = TextEditingController();
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

  Future<void> register(BuildContext context) async {
    setState(() {
      isLoading = true;
    });
    if (_formKey.currentState?.validate() ?? false) {
      Response response = await auth.register(nameController.text.toString(),
          emailController.text.toString(), passwordController.text.toString());
      if (response.statusCode == 201) {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return ModalSuccessWidget(
                  description:
                      "Congratulations! Your registration was successful.",
                  actionText: "Login",
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/login');
                  });
            });
      }
      debugPrint(response.body.toString());
      setState(() {
        isLoading = false;
      });
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
              child: Form(
                key: _formKey,
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
                      text: isLoading ? 'Please wait' : 'Register',
                      onPressed: () async {
                        await register(context);
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
      ),
    );
  }
}
