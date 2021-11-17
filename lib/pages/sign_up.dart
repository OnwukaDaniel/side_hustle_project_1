import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Color? drawerCardColor = Colors.limeAccent[100];
  String? snackBarText = '';
  Widget? navWidget = Text('Empty');
  double inputMargin = 50.0;
  double inputPadding = 20.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                SizedBox(width: 20, height: 50),
                InkWell(
                  child: Icon(Icons.arrow_back_ios),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Image.asset('assets/reading.jpg', height: 150),
            Center(
                child: Text('SIGN UP',
                    style: TextStyle(color: Colors.black, fontSize: 25))),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: inputMargin),
              padding: EdgeInsets.symmetric(horizontal: inputPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[100],
                border: Border.all(color: Colors.blue),
              ),
              child: TextField(
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  if (value.length > 10) {
                    SnackBar snackBar =
                    SnackBar(content: Text('E Don Do for you self'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.person),
                  hintText: 'Username',
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(horizontal: inputPadding),
              margin: EdgeInsets.symmetric(horizontal: inputMargin),
              child: TextField(
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
                  icon: Icon(Icons.email),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: inputMargin),
              padding: EdgeInsets.symmetric(horizontal: inputPadding),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blue),
              ),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Phone',
                  icon: Icon(Icons.phone),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: inputMargin),
              padding: EdgeInsets.symmetric(horizontal: inputPadding),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blue),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                  icon: Icon(Icons.lock),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: inputMargin),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('SIGN UP'),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: inputMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, '/');
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.blue[600]),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child:
                  Divider(thickness: 2, indent: inputMargin, endIndent: 30),
                ),
                Text('OR', style: TextStyle(color: Colors.blue)),
                Expanded(
                  child:
                  Divider(thickness: 2, indent: 30, endIndent: inputMargin),
                ),
              ],
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/logos/google.png'),
                ),
                SizedBox(width: 20),
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/logos/facebook.png'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}