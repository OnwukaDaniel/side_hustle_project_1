import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:side_hustle_project_1/pages/sign_up.dart';

import 'WelcomePage.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  static String id = 'login';

  String email = '';
  String phone = '';
  String password = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    double inputPadding = 10.0;
    double inputMargin = 20.0;
    Color? colorMarineBlue = Colors.deepPurple[900];
    List<AssetImage> icons = [
      AssetImage('assets/logos/apple.png'),
      AssetImage('assets/logos/google.png'),
      AssetImage('assets/logos/facebook.png'),
      AssetImage('assets/logos/twitter.png'),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Image.asset('assets/reading.jpg', height: 200),
            Container(
              margin: EdgeInsets.symmetric(horizontal: inputMargin),
              child: Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: colorMarineBlue),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: inputMargin),
              child: TextField(
                onChanged: (txt) {
                  email = txt;
                },
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  hintText: "E-mail",
                  suffixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: inputMargin),
              child: TextField(
                onChanged: (txt) {
                  password = txt;
                },
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.lock_open),
                  hintText: "Password",
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: inputMargin + 4),
              child: ElevatedButton(
                onPressed: () async {
                  await _auth.signInWithEmailAndPassword(
                      email: email, password: password).whenComplete(() {
                    Navigator.pushNamed(context, WelcomePage.id);
                  });
                },
                child: Text('Login'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(colorMarineBlue),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ))),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Don't have an account?",
                    style: TextStyle(color: Colors.grey[600], fontSize: 15)),
                SizedBox(width: 30),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SignUp.id);
                  },
                  child: Text('SignUp',
                      style: TextStyle(color: Colors.blue[600], fontSize: 16)),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                    child: Divider(
                      indent: inputMargin * 2,
                      endIndent: inputMargin / 2,
                    )),
                Text('or login with?',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                Expanded(
                    child: Divider(
                      indent: inputMargin / 2,
                      endIndent: inputMargin * 2,
                    )),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: icons
                  .map((e) =>
                  CircleAvatar(
                      backgroundImage: e, backgroundColor: Colors.white))
                  .toList(),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
