import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight Tracker'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 50.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Username"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Password"),
            ),
            SizedBox(
              height: 40.0,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("Sign In"),
              color: Colors.black87,
              textColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
            )
          ],
        ),
      ),
    );
  }
}
