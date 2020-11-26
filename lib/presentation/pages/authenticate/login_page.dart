import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight Tracker'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {},
          child: Text("Sign In"),
          color: Colors.black87,
          textColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
        ),
      ),
    );
  }
}
