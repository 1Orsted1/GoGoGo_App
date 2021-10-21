import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  BuildContext ctx;
  Color backgroundColor;
  String textButton;
  Function actionButton;

  CustomButton(this.ctx, this.backgroundColor, this.textButton,this.actionButton);

  @override
  Widget build(BuildContext context) {
    return _customBtn(ctx, backgroundColor, textButton, this.actionButton);
  }
}

Widget _customBtn(context, color, text, Function actionButton) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color, // background
        onPrimary: Colors.white, // foreground
      ),
      onPressed: () {
        actionButton();
      },
      child: Text(text),
    ),
  );
}
