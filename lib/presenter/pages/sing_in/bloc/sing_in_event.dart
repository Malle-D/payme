part of 'sing_in_bloc.dart';

@immutable class SingInEvent {}

class SignInUserEvent extends SingInEvent {
  final SignInModel signInModel;

  SignInUserEvent(this.signInModel);
}

