import 'package:flutter_app/auth/form_sub_status.dart';

class LoginState {
  final String userName;
  final String password;
  final FormSubmissionStatus formStatus;

  LoginState({
    this.userName = '',
    this.password = '',
    this.formStatus = const InitialFormStatus(),
  });

  LoginState copyWith({
    String? userName,
    String? password,
    FormSubmissionStatus? formStatus,
  }) {
    return LoginState(
      userName: userName ?? this.userName,
      password: password ?? this.password,
      formStatus: formStatus ?? this.formStatus,
    );
  }
}
