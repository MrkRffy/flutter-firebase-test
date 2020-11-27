import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState(userCredential: null));

  Future<UserCredential> loginAnonymously() async {
    UserCredential userCredential = await FirebaseAuth.instance.signInAnonymously();
    await Future.delayed(Duration(seconds: 5));
    emit(state.update(userCredential: userCredential));
  }
}
