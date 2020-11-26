import 'package:flutter/material.dart';
import 'package:flutter_firebase_weight_tracker/presentation/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: LoginPage(),
    );
  }
}
