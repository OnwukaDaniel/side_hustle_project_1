import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);
  static String id = 'WelcomePage';

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  String username = '';
  String email = '';
  String phone = '';
  String password = '';

  getUserDetails() {
    try {
      Map mp = ModalRoute.of(context)!.settings.arguments as Map;
      username = mp['username'];
      phone = mp['phone'];
      email = _auth.currentUser.email;
    } catch (e) {
      print('No detail collected ********************** ');
    }
  }

  @override
  Widget build(BuildContext context) {
    getUserDetails();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leading: Icon(Icons.home), title: Text('Welcome')),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(child: Image(image: AssetImage('assets/welcome.jpg'))),
            SizedBox(height: 10),
            Text('Email',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            SizedBox(height: 20),
            Text(email,
                style: TextStyle(color: Colors.lightGreen)),
            SizedBox(height: 20),
            Text('Username',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            SizedBox(height: 10),
            Text(username,
                style: TextStyle(color: Colors.lightGreen)),
            SizedBox(height: 20),
            Text('Phone',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            SizedBox(height: 10),
            Text(phone,
                style: TextStyle(color: Colors.lightGreen)),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
