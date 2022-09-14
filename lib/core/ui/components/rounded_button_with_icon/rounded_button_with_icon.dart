import 'package:flutter/material.dart';

class RoundedButtonWithIcon extends StatelessWidget {
  final String label;
  final TextStyle labelTextStyle;
  final GestureTapCallback onTap;
  final double width;
  final double height;
  final Color color;
  final Widget? imageIcon;
  final IconData? icon;

  const RoundedButtonWithIcon({
    super.key,
    required this.label,
    required this.labelTextStyle,
    required this.onTap,
    required this.width,
    required this.height,
    required this.color,
    this.imageIcon,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 70),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
                right: 2,
              ),
              child: imageIcon ?? Icon(icon, color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: VerticalDivider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
            Text(
              label,
              style: labelTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
