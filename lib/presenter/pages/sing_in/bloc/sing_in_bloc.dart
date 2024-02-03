
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../../data/repository/app_repository.dart';
import '../../../../di/di.dart';

part 'sing_in_event.dart';
part 'sing_in_state.dart';

class SingInBloc extends Bloc<SingInEvent, SingInState> {
  SingInBloc() : super(SingInInitial()) {
    final repository = getIt<AppRepository>();
    on<SingInEvent>((event, emit) {
      emit(SingInSubmit());
    });
  }
}
