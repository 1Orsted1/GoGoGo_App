import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/auth/auth_repository.dart';
import 'package:flutter_app/auth/login/login_bloc.dart';
import 'package:flutter_app/widgets/bottom_option_buttons.dart';
import 'package:flutter_app/widgets/login_form.dart';
import 'package:flutter_app/widgets/upper_line.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatefulWidget {
  static const routeName = '/sign-in-screen';

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  //TODO change all the "backgroundColor" for the Theme from the state...

  @override
  Widget build(BuildContext context) {
    //return _signInScreen(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
            create: (_) => LoginBloc(context.read<AuthRepository>())),
      ],
      child: _signInScreen(context),
    );
  }
}

Widget _signInScreen(BuildContext context) {
  final Color backgroundColor = Color(0xfff95253);
  final Color backgroundColorBtn = Color(0xffc50e29);

  return Scaffold(
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).primaryColor,
      //title: Text('Inicio'),
    ),
    body: SingleChildScrollView(
      child: Container(
        color: backgroundColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            //UpperLine(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'GoGoGo',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.10,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 3.5,
                child: Image.network(
                    'https://lh4.googleusercontent.com/rDjtZlWkokJAW8nOJr3k81tm4jl33TEwshBtLAH8cIT616vf4iOIC0teQoiG5STpApkmZa9o2tcyPP8hOe8sEb5tKUfd2gTqeZSTSx-RmaKwkxVksSTQnfsjQ11Yc6WwoV8ZdQ=s0'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.03,
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: LoginForm(),
            ),
          ],
        ),
      ),
    ),
    bottomNavigationBar: BottomAppBar(
      color: backgroundColor,
      child: OptionButtons("Crear cuenta"),
      elevation: 0,
    ),
  );
}

