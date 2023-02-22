import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class MovieLoginCubit extends Cubit<MovieLoginState> {
  MovieLoginCubit() :super(MovieLoginInitial());
//take an object from cubit
  static MovieLoginCubit get(context) => BlocProvider.of(context);

  void userLogin({
    required String email,
    required String password
  }) {
    emit(MovieLoginLoadingState());
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password
    ).then((value) {
      debugPrint(value.user!.email);
      debugPrint(value.user!.uid);
      emit(MovieLoginSuccessState(value.user!.uid));
    }).catchError((error) {
      emit(MovieLoginErrorState(error.toString()));
    });
  }


  IconData suffix = Icons.visibility_outlined;
  bool obscureText=true;
  void changePasswordVisibility()
  {
    obscureText = !obscureText;
    suffix = obscureText ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(MovieChangeVisibilityState());
  }
}
