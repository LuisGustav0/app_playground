import 'package:app_playground/core/ui/components/tinder_rounded_button_with_icon/tinder_rounded_button_with_icon.dart';
import 'package:flutter/material.dart';

class AppleButtonWithIcon extends StatelessWidget {
  final double width;
  final double height;
  final GestureTapCallback onPressed;

  const AppleButtonWithIcon({
    super.key,
    this.width = 400,
    this.height = 50,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TinderRoundedButtonWithIcon(
      label: 'SIGN IN WITH APPLE',
      labelTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      onTap: onPressed,
      width: width,
      height: height,
      color: Colors.transparent,
      icon: Icons.apple,
    );
  }
}
