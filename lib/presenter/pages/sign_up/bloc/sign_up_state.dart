part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SuccessState extends SignUpState {
  final SignUpResponse result;

  SuccessState(this.result);
}

class FailState extends SignUpState {
  final String msg;

  FailState(this.msg);
}