import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_weight_tracker/presentation/pages/authenticate/login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError)
            return Center(
              child: Text("Something went wrong. Please restart the app"),
            );

          if (snapshot.connectionState == ConnectionState.done) {
            return LoginPage();
          }

          return CircularProgressIndicator();
        },
      ),
    );
  }
}
