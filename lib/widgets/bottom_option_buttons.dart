import 'package:flutter/material.dart';
import 'package:flutter_app/screens/register_screen.dart';
import 'package:flutter_app/screens/sign_in_screen.dart';

class OptionButtons extends StatelessWidget {
  String textButton2;

  OptionButtons(this.textButton2);

  final Color backgroundColor = Color(0xfff95253);
  final Color buttonColor = Color(0xfffa8680);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _OptionBtn(
          context,
          backgroundColor,
          buttonColor,
          "Términos y Condiciones",
        ),
        _OptionBtn(
          context,
          backgroundColor,
          buttonColor,
          textButton2,
        ),
      ],
    );
  }
}

Widget _OptionBtn(context, backgroundColor, buttonColor, textButton) {
  void moveForward(BuildContext ctx, String option) {
    if (option == "Crear cuenta")
      Navigator.of(ctx).pushNamed(RegisterScreen.routeName);
    else if (option == "Iniciar sesión") {
      Navigator.of(ctx).pop();
    }
  }

  return Container(
    decoration: BoxDecoration(
      color: backgroundColor,
    ),
    width: MediaQuery.of(context).size.width / 2,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: buttonColor, // background
        onPrimary: Colors.white, // foreground
      ),
      onPressed: () {
        moveForward(context, textButton);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          textButton,
          style: TextStyle(fontSize: 12, color: Colors.black87),
        ),
      ),
    ),
  );
}
