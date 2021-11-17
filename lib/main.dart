import 'package:flutter/material.dart';
import 'package:side_hustle_project_1/pages/login.dart';
import 'package:side_hustle_project_1/pages/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Login(),
        '/signup': (context) => SignUp()
      },
    );
  }
}
