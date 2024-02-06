part of 'confirm_code_bloc.dart';

@immutable
abstract class ConfirmCodeEvent {}

class ConfirmCodeUserEvent extends ConfirmCodeEvent{
  final ConfirmCodeModel confirmCodeModel;

  ConfirmCodeUserEvent(this.confirmCodeModel);
}
