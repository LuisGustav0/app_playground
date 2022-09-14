import 'package:app_playground/core/ui/routes/app_routes.dart';
import 'package:app_playground/modules/home/home_page.dart';
import 'package:app_playground/modules/login_money/login_money_page.dart';
import 'package:app_playground/modules/login_tinder/login_tinder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        AppRouter.HOME_PAGE: (context) => const HomePage(),
        AppRouter.LOGIN_MONEY_PAGE: (context) => const LoginMoneyPage(),
        AppRouter.LOGIN_TINDER_PAGE: (context) => const LoginTinderPage(),
      },
    );
  }
}
