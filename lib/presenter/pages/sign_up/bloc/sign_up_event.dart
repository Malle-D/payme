part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpEvent {}

class SignUpUserEvent extends SignUpEvent {
  final SignUpModel signUpModel;

  SignUpUserEvent(this.signUpModel);
}
