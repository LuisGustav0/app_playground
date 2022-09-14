import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 70, right: 70),
      child: const Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'By tapping Create Account or Sign In, you agree to our \n',
            ),
            TextSpan(
              text: 'Terms',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(text: '. Leanr how we process your data in our '),
            TextSpan(
              text: 'Privacy\n Policy ',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.white,
              ),
            ),
            TextSpan(text: 'and '),
            TextSpan(
              text: 'Cookies Policy.',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}
