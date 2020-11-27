import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_firebase_weight_tracker/logic/cubit/login_cubit.dart';
import 'package:flutter_firebase_weight_tracker/presentation/pages/authenticate/weight_list.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Weight Tracker'),
        ),
        body: Center(
          child: _LoginButton(),
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        if (state.userCredential != null) {
          SchedulerBinding.instance.addPostFrameCallback((_) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => WeightList()));
          });
        }

        return RaisedButton(
          onPressed: () {
            context.read<LoginCubit>().loginAnonymously();
          },
          child: Text("Sign In Anonymously"),
          color: Colors.black87,
          textColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
        );
      },
    );
  }
}
