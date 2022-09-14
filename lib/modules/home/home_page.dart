import 'package:app_playground/core/ui/components/components.dart';
import 'package:app_playground/core/ui/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryButton(
              label: 'Login Money',
              width: 800,
              onPressed: () {
                Navigator.pushNamed(context, AppRouter.LOGIN_MONEY_PAGE);
              },
            ),
            PrimaryButton(
              label: 'Login Tinder',
              backgroundColor: Colors.pink,
              width: 800,
              onPressed: () {
                Navigator.pushNamed(context, AppRouter.LOGIN_TINDER_PAGE);
              },
            ),
            PrimaryButton(
              label: 'Animação Float Button implicita',
              backgroundColor: Colors.orange,
              width: 800,
              onPressed: () {
                Navigator.pushNamed(context, AppRouter.BUTTON_IMPLICIT_PAGE);
              },
            ),
          ],
        ),
      ),
    );
  }
}
