part of 'login_cubit.dart';

class LoginState {
  final UserCredential userCredential;

  LoginState({this.userCredential});

  LoginState update({UserCredential userCredential}) {
    return LoginState(userCredential: userCredential);
  }
}
