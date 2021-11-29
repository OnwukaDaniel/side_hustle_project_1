import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:side_hustle_project_1/pages/WelcomePage.dart';
import 'package:side_hustle_project_1/pages/sign_up.dart';

class InitPage extends StatelessWidget {
  InitPage({Key? key}) : super(key: key);
  static String id = 'initPage';
  String user = "";

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser == null) {
      WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
        Navigator.popAndPushNamed(context, SignUp.id);
      });
    } else {
      WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
        Navigator.popAndPushNamed(context, WelcomePage.id);
      });
    }
    return Scaffold(
      body: Text('Loading...'),
    );
  }
}
