import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  final String label;
  final Color colorLabel;
  final double fontSize;

  const HeaderTitle({
    super.key,
    required this.label,
    required this.colorLabel,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: colorLabel,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
