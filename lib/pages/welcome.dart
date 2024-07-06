import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wappstik/components/button.dart';
import 'package:wappstik/constants.dart';

class WelcomePages extends StatelessWidget {
  const WelcomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svgs/illustration/welcome.svg',
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome to WappStik!",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Discover and create unique WhatsApp stickers effortlessly",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonComponent(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/login');
                },
                text: "Get Started",
                backgroundColor: WappstikPalette.purple,
              )
            ],
          ),
        ),
      ),
    );
  }
}
