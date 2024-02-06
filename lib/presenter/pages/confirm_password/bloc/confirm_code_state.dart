part of 'confirm_code_bloc.dart';

@immutable
abstract class ConfirmCodeState {}

class SuccessState extends ConfirmCodeState {
  final ConfirmCodeResponse result;

  SuccessState(this.result);
}

class FailState extends ConfirmCodeState {
  final String msg;

  FailState(this.msg);
}

class ConfirmCodeInitial extends ConfirmCodeState {}
