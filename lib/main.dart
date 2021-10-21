import 'package:flutter/material.dart';
import 'package:flutter_app/auth/auth_repository.dart';
import 'package:flutter_app/screens/confirmation_screen.dart';
import 'package:flutter_app/screens/main_screen.dart';
import 'package:flutter_app/screens/mis_negocios_screen.dart';
import 'package:flutter_app/screens/promociones_screen.dart';
import 'package:flutter_app/screens/register_screen.dart';
import 'package:flutter_app/screens/sign_in_screen.dart';
import 'package:flutter_app/screens/testNotImplemented/test_main_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth/login/login_bloc.dart';
//import 'package:flutter_app/screens/test/test_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GOGOGO',
        theme: ThemeData(
          brightness: Brightness.light,
          appBarTheme: AppBarTheme(brightness: Brightness.dark),
          bottomSheetTheme:
              BottomSheetThemeData(modalBackgroundColor: Colors.transparent),

          primaryColor: Color(0xfff95253),
          primaryColorBrightness: Brightness.light,
          //primarySwatch: Colors.red,
        ),
        //home: SignInScreen(),

        home: RepositoryProvider(
          create: (context) => AuthRepository(),
          child: SignInScreen(),
        ),

        //home: SignInScreenTest(),
        routes: {
          //**********************************************
          // Ruta para ir a sign-in
          //**********************************************
          SignInScreen.routeName: (ctx) => SignInScreen(),

          //**********************************************
          // Ruta para ir al register
          //**********************************************
          RegisterScreen.routeName: (ctx) => RegisterScreen(),

          //**********************************************
          // Ruta para ir a la confirmation Screen
          //**********************************************
          ConfirmationScreen.routeName: (ctx) => ConfirmationScreen(),

          //**********************************************
          // Ruta para ir al main Screen
          //**********************************************
          MainScreen.routeName: (ctx) => MainScreen(),

          //**********************************************
          // Ruta para ir a promociones screen
          //**********************************************
          PromocionesScreen.routeName: (ctx) => PromocionesScreen(),

          //**********************************************
          // Ruta para ir al negocios screen
          //**********************************************
          MisNegociosScreen.routeName: (ctx) => MisNegociosScreen(),
        });
  }
}
