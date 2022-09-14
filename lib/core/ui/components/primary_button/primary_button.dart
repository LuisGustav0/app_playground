import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  final double borderRadius;

  final Color? backgroundColor;
  final Color? labelColor;
  final double labelSize;

  final double padding;
  final double width;
  final double height;

  const PrimaryButton({
    super.key,
    required this.label,
    this.onPressed,
    this.borderRadius = 10,
    this.backgroundColor,
    this.labelColor,
    this.labelSize = 20,
    this.padding = 10,
    this.width = double.infinity,
    this.height = 66,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          primary: backgroundColor ?? Colors.deepPurple,
        ),
        child: Text(
          label,
          style: TextStyle(
            color: labelColor ?? Colors.white,
            fontSize: labelSize,
          ),
        ),
      ),
    );
  }
}
