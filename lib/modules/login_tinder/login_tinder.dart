import 'package:app_playground/core/ui/components/components.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class LoginTinderPage extends StatelessWidget {
  const LoginTinderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.red.shade400,
                    Colors.pink,
                    Colors.pinkAccent.shade400,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const HeaderLogo(),
                  const HeaderTitle(),
                  const SizedBox(height: 15),
                  AppleButtonWithIcon(onPressed: () {}),
                  const SizedBox(height: 15),
                  FacebookButtonWithIcon(onPressed: () {}),
                  const SizedBox(height: 15),
                  PhoneButtonWithIcon(onPressed: () {}),
                  const SizedBox(height: 15),
                  const Text(
                    'Trouble Signing In?',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
