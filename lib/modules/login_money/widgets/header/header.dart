import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 150,
        bottom: 35,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurple.shade500,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                height: 45,
                width: 50,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80.0),
                  ),
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.elliptical(50, 50),
                bottomLeft: Radius.elliptical(50, 50),
              ),
              color: Colors.deepPurple,
            ),
            height: 100,
            width: 50,
          ),
        ],
      ),
    );
  }
}
