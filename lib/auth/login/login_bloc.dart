import 'package:flutter/services.dart';
import 'package:flutter_app/auth/login/login_event.dart';
import 'package:flutter_app/auth/login/login_state.dart';
import 'package:flutter_app/auth/form_sub_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth_repository.dart';

class LoginBloc extends Bloc<LoginEvents, LoginState> {
  final AuthRepository authRepo;

  LoginBloc(this.authRepo) : super(LoginState());

  @override
  Stream<LoginState> mapEventToState(LoginEvents event) async* {
    // User Updated
    if (event is LoginUserChanged) {
      yield state.copyWith(userName: event.userName);
    }

    // Password changed
    if (event is LoginPasswordChanged) {
      yield state.copyWith(password: event.pass);
    }

    //form submitted
    if (event is LoginOnSubmit) {
      yield state.copyWith(formStatus: FormSubmitting());
      try {
        await authRepo.login();
        yield state.copyWith(formStatus: FormSubmissionSuccess());
      } catch (e) {
        yield state.copyWith(formStatus: SubmissionFailed(e as Exception));
      }
    }
  }
}
