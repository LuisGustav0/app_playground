import 'package:app_playground/core/ui/components/components.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class LoginMoneyPage extends StatefulWidget {
  const LoginMoneyPage({super.key});

  @override
  State<LoginMoneyPage> createState() => _LoginMoneyPageState();
}

class _LoginMoneyPageState extends State<LoginMoneyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const HeaderWidget(),
          const TitleWidget(
            label: 'Get your Money \n Under Control',
            fontSize: 40,
            colorLabel: Colors.white,
          ),
          const SizedBox(height: 15),
          const TitleWidget(
            label: 'Manage your expenses. \nSeamlessy.',
            fontSize: 20,
            colorLabel: Colors.white54,
          ),
          const SizedBox(height: 15),
          PrimaryButton(
            label: 'Sign Up with Email ID',
            width: 400,
            onPressed: () {},
            backgroundColor: Colors.deepPurple.shade500,
          ),
          const SizedBox(height: 15),
          GoogleButtonWithIcon(
            onPressed: () {},
          ),
          const SizedBox(height: 15),
          RichText(
            text: const TextSpan(
              text: 'Already have an account? ',
              style: TextStyle(color: Colors.white),
              children: [
                TextSpan(
                  text: 'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
