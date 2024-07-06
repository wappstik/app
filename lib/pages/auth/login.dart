import 'package:flutter/material.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text("WappStik"),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.settings))],
    ));
  }
}
