part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class ChangeVisibilityState extends LoginState{}

class LoginLoadingState extends LoginState{}

class LoginSuccessState extends LoginState{
  late final dynamic uid;
  LoginSuccessState(this.uid);

}

class LoginErrorState extends LoginState {
  late final String error;

  LoginErrorState(this.error);
}
