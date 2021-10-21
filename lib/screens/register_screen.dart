import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/bottom_option_buttons.dart';
import 'package:flutter_app/widgets/custom_button.dart';
import 'package:flutter_app/widgets/custom_text_field.dart';

import 'confirmation_screen.dart';

class RegisterScreen extends StatefulWidget {
  static final routeName = '/register-screen';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  //TODO change all the "backgroundColor" for the Theme from the state...
  final Color backgroundColor = Color(0xfff95253);
  final Color backgroundColorBtn = Color(0xffc50e29);

 /* Function(String)? _doomy() {
    return "nada";
  }*/

  @override
  Widget build(BuildContext context) {
    return
        //SafeArea(
        //child:
        Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        //flexibleSpace: UpperLine(),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: backgroundColor,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: Text(
                  'Bienvenido',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.08,
                      fontWeight: FontWeight.bold),
                ),
              ),
              _someSpace(context, 30),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CustomTextField(context, "Nombre",),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CustomTextField(context, "Apellido"),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CustomTextField(context, "Correo Electrónico"),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CustomTextField(context, "Contraseña"),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CustomTextField(context, "Confirmar Contraseña"),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CustomButton(context, backgroundColorBtn, "Crear cuenta",
                    () {
                  print('registro');
                  Navigator.of(context).pushNamed(ConfirmationScreen.routeName);
                }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: backgroundColor,
        child: OptionButtons("Iniciar sesión"),
        elevation: 0,
      ),
    );
    // );
  }
}

Widget _someSpace(ctx, space) {
  return SizedBox(
    height: MediaQuery.of(ctx).size.height / space,
  );
}
