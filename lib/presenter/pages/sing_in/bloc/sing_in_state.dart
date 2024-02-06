part of 'sing_in_bloc.dart';

@immutable
abstract class SingInState{}


class SuccessState extends SingInState {
  final SignInResponse result;

  SuccessState(this.result);
}

class FailState extends SingInState {
  final String msg;

  FailState(this.msg);
}

class SingInInitial extends SingInState {}
