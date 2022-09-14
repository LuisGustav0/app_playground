import 'package:app_playground/core/ui/components/rounded_button_with_icon/rounded_button_with_icon.dart';
import 'package:flutter/material.dart';

class GoogleButtonWithIcon extends StatelessWidget {
  final double width;
  final double height;
  final GestureTapCallback onPressed;

  const GoogleButtonWithIcon({
    super.key,
    this.width = 380,
    this.height = 45,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedButtonWithIcon(
      label: 'Sign Up with Google',
      labelTextStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      onTap: onPressed,
      width: width,
      height: height,
      color: Colors.white,
      imageIcon: Image.asset(
        'assets/images/icon_google.png',
        width: 25,
        height: 25,
      ),
    );
  }
}
