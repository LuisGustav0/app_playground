import 'package:flutter/material.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 180,
      child: Image.asset(
        'assets/images/logo_tinder.png',
      ),
    );
  }
}
