import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:payme_clone/data/models/sing_in/response/sign_in_response.dart';
import 'package:payme_clone/data/models/sing_in/sign_in_model.dart';

import '../../../../data/preference/my_preference.dart';
import '../../../../data/repository/app_repository.dart';
import '../../../../di/di.dart';

part 'sing_in_event.dart';
part 'sing_in_state.dart';

class SingInBloc extends Bloc<SingInEvent, SingInState> {
  SingInBloc() : super(SingInInitial()) {
    final _repository = getIt<AppRepository>();
    on<SignInUserEvent>((event, emit) async {
      try {
        final result = await _repository.singInUser(event.signInModel);
        if (result.token != null) {
          emit(SuccessState(result));
          MyPreference.setFromWhichScreen(false);
          MyPreference.saveToken(result.token.toString());
          print('+++++++++++++++++++++++++${result.token}');
        } else {
          // print('+++++++++++++++++++++++++${result.message}');
          // emit(FailState(result.message ?? ''));
        }
      } catch (e) {
        print('-------------------------------- ${e.toString()}');
        emit(FailState(e.toString()));
      }
    });
  }
}
