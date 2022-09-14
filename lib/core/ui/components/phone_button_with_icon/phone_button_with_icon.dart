import 'package:app_playground/core/ui/components/tinder_rounded_button_with_icon/tinder_rounded_button_with_icon.dart';
import 'package:flutter/material.dart';

class PhoneButtonWithIcon extends StatelessWidget {
  final double width;
  final double height;
  final GestureTapCallback onPressed;

  const PhoneButtonWithIcon({
    super.key,
    this.width = 400,
    this.height = 50,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TinderRoundedButtonWithIcon(
      label: 'SIGN IN WITH PHONE NUMBER',
      labelTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      onTap: onPressed,
      width: width,
      height: height,
      color: Colors.transparent,
      icon: Icons.messenger_outlined,
    );
  }
}
