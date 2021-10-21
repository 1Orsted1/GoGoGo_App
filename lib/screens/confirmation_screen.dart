import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/bottom_option_buttons.dart';

class ConfirmationScreen extends StatefulWidget {
  static final routeName = '/confirmation-screen';

  @override
  _ConfirmationScreenState createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  final Color backgroundColor = Color(0xfff95253);
  final Color backgroundColorBtn = Color(0xffc50e29);

  @override
  Widget build(BuildContext context) {
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  'GoGoGo',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    'Haz quedado registrado en GoGoGo',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    'Te enviamos un correo para que confirmes tu registro.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
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
  }
}
