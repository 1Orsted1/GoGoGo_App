import 'package:flutter/material.dart';
import 'package:flutter_app/auth/form_sub_status.dart';
import 'package:flutter_app/auth/login/login_bloc.dart';
import 'package:flutter_app/auth/login/login_event.dart';
import 'package:flutter_app/auth/login/login_state.dart';
import 'package:flutter_app/screens/main_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_button.dart';
import 'custom_text_field_test.dart';

class LoginForm extends StatelessWidget {
  final Color backgroundColorBtn = const Color(0xffc50e29);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _signInTextField(context, "Correo electrónico"),
          //CustomTextField(context, "Correo electrónico"),
          _someSpace(context, 30),
          _passwordTextField(context),
          _someSpace(context, 60),
          _forgetBtn(),
          //CustomButton(context, backgroundColorBtn, "Iniciar sesión", () {print('iniciar sesion');}),
          _initSessionBtn(context, backgroundColorBtn, _formKey, context),
        ],
      ),
    );
  }
}

Widget _someSpace(context, space) {
  return SizedBox(
    height: MediaQuery.of(context).size.height / space,
  );
}

Widget _signInTextField(BuildContext ctx, String hintText) {
  //block listener
  return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
    Function(String)? _myTestFunction(value) {
      context.read<LoginBloc>().add(
            LoginUserChanged(userName: value),
          );
    }

    return CustomTestTextField(ctx, hintText, _myTestFunction);
  });
}

Widget _passwordTextField(BuildContext ctx) {
  return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
    Function(String)? _myTestFunction(value) {
      context.read<LoginBloc>().add(
            LoginUserChanged(userName: value),
          );
    }

    //******************Uso el text field ya programado 1 vez *******************
    return _password(ctx, _myTestFunction);
  });
}

Widget _password(context, Function(String)? onChangeEvent) {
  return Container(
    height: MediaQuery.of(context).size.height / 18,
    child: TextFormField(
      //validator: (value) => (value!.length > 4) ? null : "password to short",
      onChanged: onChangeEvent,
      obscureText: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(8.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: "Contraseña",
        hintStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.05,
            color: Colors.black38),
      ),
    ),
  );
}

Widget _initSessionBtn(
  context,
  backgroundColorBtn,
  GlobalKey<FormState> formKey,
  ctx,
) {
  return BlocBuilder<LoginBloc, LoginState>(
    builder: (context, state) {
      return state.formStatus is FormSubmitting
          ? CircularProgressIndicator()
          : CustomButton(context, backgroundColorBtn, "Iniciar sesión", () {
              if (formKey.currentState!.validate()) {
                context.read<LoginBloc>().add(LoginOnSubmit());
                Navigator.of(ctx).pushNamed(MainScreen.routeName);
              }
            });
    },
  );
}

Widget _forgetBtn2(GlobalKey<FormState> formKey) {
  return BlocBuilder<LoginBloc, LoginState>(
    builder: (context, state) {
      return state.formStatus is FormSubmitting
          ? CircularProgressIndicator()
          : const Text('Np se debe mostrar');
    },
  );
}

Widget _forgetBtn() {
  return Container(
    alignment: Alignment.bottomRight,
    child: TextButton(
      onPressed: () {
        print("Olvidaste la contrasña");
      },
      child: const Text(
        "Olvidaste tu contraseña?",
        style: TextStyle(
          color: Colors.black87,
        ),
      ),
    ),
  );
}
