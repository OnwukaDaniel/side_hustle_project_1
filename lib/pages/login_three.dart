import 'package:flutter/material.dart';

class LoginThree extends StatelessWidget {
  const LoginThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: ListView(
          children: [
            Image.asset('assets/cart_icon.png', alignment: Alignment.topLeft),
            SizedBox(height: 30),
            Text('Welcome\nBack'),
            SizedBox(height: 40),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              color: Colors.white,
              child: ListView(
                children: [
                  Text('Email Address', style: TextStyle(fontSize: 14),),
                  TextField(
                    style: TextStyle(),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      suffixIcon: Icon(Icons.email_outlined),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
