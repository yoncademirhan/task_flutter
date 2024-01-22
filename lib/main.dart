import 'package:flutter/material.dart';
import 'package:task_flutter/pages/account_page.dart';
import 'package:task_flutter/pages/account_verfication.dart';
import 'package:task_flutter/pages/create_pass_active_page.dart';
import 'package:task_flutter/pages/create_pass_page.dart';
import 'package:task_flutter/pages/login_page.dart';
import 'package:task_flutter/pages/create_pass_again_page.dart';
import 'package:task_flutter/pages/create_pass_again_active_page.dart';
import 'package:task_flutter/pages/login_pass_active_page.dart';
import 'package:task_flutter/pages/login_pass_page.dart';
import 'package:task_flutter/pages/register_page.dart';
import 'package:task_flutter/pages/verification_active_page.dart';
import 'package:task_flutter/pages/verification_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LoginPage(),
      // home: LoginPasswordPage(),
      // home: LoginPassActivePage(),
      // home: RegisterPage(),
      // home: VerificationPage(),
      // home: VerificationActivePage(),
      // home: CreatePassPage(),
      // home: CreatePassActivePage(),
      // home: CreatePassAgainPage(),
      // home: CreatePassAgainActivePage(),
      home: AccountPage(),
      // home: AccountVerification(),
    );
  }
}
