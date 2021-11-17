import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
            /*InkWell(
              child: Row(
                children: [
                  SizedBox(width: 20, height: 50),
                  Icon(Icons.arrow_back_ios),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),*/
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
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  hintText: "Username",
                  suffixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: inputMargin),
              child: TextField(
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
                onPressed: () {},
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
                    style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                SizedBox(width: 30),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: Text('SignUp',
                      style: TextStyle(color: Colors.blue[600], fontSize: 12)),
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
                  .map((e) => CircleAvatar(
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
