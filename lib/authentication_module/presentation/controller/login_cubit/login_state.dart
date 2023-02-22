part of 'login_cubit.dart';
//nnp
@immutable
abstract class MovieLoginState {}

class MovieLoginInitial extends MovieLoginState {}

class MovieChangeVisibilityState extends MovieLoginState{}

class MovieLoginLoadingState extends MovieLoginState{}

class MovieLoginSuccessState extends MovieLoginState{
  late final dynamic uid;
  MovieLoginSuccessState(this.uid);

}

class MovieLoginErrorState extends MovieLoginState {
  late final String error;

  MovieLoginErrorState(this.error);
}
