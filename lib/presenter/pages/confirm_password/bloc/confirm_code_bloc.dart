import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:payme_clone/data/models/confirm_code/confirm_code_model.dart';
import 'package:payme_clone/data/models/confirm_code/response/confirm_code_response.dart';
import '../../../../data/preference/my_preference.dart';
import '../../../../data/repository/app_repository.dart';
import '../../../../di/di.dart';

part 'confirm_code_event.dart';
part 'confirm_code_state.dart';

class ConfirmCodeBloc extends Bloc<ConfirmCodeEvent, ConfirmCodeState> {
  final _repository = getIt<AppRepository>();


  ConfirmCodeBloc() : super(ConfirmCodeInitial()) {
    on<ConfirmCodeUserEvent>((event, emit) async{
      final ConfirmCodeResponse result;
      try {
        if(!MyPreference.fromWhichScreen()){
          result = await _repository.signInVerify(event.confirmCodeModel);
        }else{
         result = await _repository.signUpVerify(event.confirmCodeModel);
        }
        if (result.accessToken != null) {
          emit(SuccessState(result));
          MyPreference.saveAccessToken(result.accessToken.toString());
          MyPreference.saveRefreshToken(result.refreshToken.toString());
          print('+++++++++++++++++++++++++${result.accessToken}');
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
