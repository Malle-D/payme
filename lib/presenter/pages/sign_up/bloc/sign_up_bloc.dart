import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:payme_clone/data/models/sign_up/response/sign_up_response.dart';
import 'package:payme_clone/data/models/sign_up/sign_up_model.dart';
import 'package:payme_clone/data/preference/my_preference.dart';
import 'package:payme_clone/data/repository/app_repository.dart';
import 'package:payme_clone/di/di.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final _repository = getIt<AppRepository>();

  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpUserEvent>((event, emit) async {
      try {
        final result = await _repository.signUpUser(event.signUpModel);

        if (result.token != null) {
          emit(SuccessState(result));
          MyPreference.saveToken(result.token.toString());
          print(result.token);
        } else {
          emit(FailState(result.message ?? ''));
        }
      } catch (e) {
        emit(FailState(e.toString()));
      }
    });
  }
}
