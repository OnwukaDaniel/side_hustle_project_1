// @dart=2.9

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:side_hustle_project_1/pages/WelcomePage.dart';
import 'package:side_hustle_project_1/pages/initPage.dart';
import 'package:side_hustle_project_1/pages/login.dart';
import 'package:side_hustle_project_1/pages/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => InitPage(),
        Login.id: (context) => Login(),
        SignUp.id: (context) => SignUp(),
        WelcomePage.id: (context) => WelcomePage(),
      },
    );
  }
}
