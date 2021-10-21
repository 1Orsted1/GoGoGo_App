abstract class LoginEvents {}

class LoginUserChanged extends LoginEvents {
  final String userName;

  LoginUserChanged({required this.userName});
}

class LoginPasswordChanged extends LoginEvents {
  final String pass;

  LoginPasswordChanged({required this.pass});
}

class LoginOnSubmit extends LoginEvents {}
