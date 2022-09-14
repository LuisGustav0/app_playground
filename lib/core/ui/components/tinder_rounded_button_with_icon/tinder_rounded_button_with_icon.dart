import 'package:flutter/material.dart';

class TinderRoundedButtonWithIcon extends StatelessWidget {
  final String label;
  final TextStyle labelTextStyle;
  final GestureTapCallback onTap;
  final double width;
  final double height;
  final Color color;
  final IconData icon;

  const TinderRoundedButtonWithIcon({
    super.key,
    required this.label,
    required this.labelTextStyle,
    required this.onTap,
    required this.width,
    required this.height,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: color,
          border: const Border.fromBorderSide(
            BorderSide(
              color: Colors.white,
            ),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              leading: Icon(
                icon,
                color: Colors.white,
              ),
              title: Center(
                child: Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              trailing: const Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
