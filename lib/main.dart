import 'package:flutter/material.dart';
import 'package:task_flutter/pages/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(context),
      //home: LoginPasswordPage(),
      // home: LoginPassActivePage(),
      // home: RegisterPage(),
      // home: VerificationPage(),
      // home: VerificationActivePage(),
      // home: CreatePassPage(),
      // home: CreatePassActivePage(),
      // home: CreatePassAgainPage(),
      // home: CreatePassAgainActivePage(),
      //  home: AccountPage(),
      // home: AccountVerification(),
    );
  }
}
