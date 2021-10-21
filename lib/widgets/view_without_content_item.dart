import 'package:flutter/material.dart';

class ViewWithoutContent extends StatelessWidget {
  final String message1;
  final String message2;

  ViewWithoutContent(this.message1, this.message2);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _message(context, message1),
        _noNegociosView(context, message2),
      ],
    );
  }

/*
*/

  Widget _message(BuildContext context, String message1) {
    return Container(
        padding: EdgeInsets.all(8.0),
        width: MediaQuery.of(context).size.width,
        child: Text(
          message1,
          textAlign: TextAlign.start,
        ));
  }

  Widget _noNegociosView(BuildContext ctx, String message) {
    double x = MediaQuery.of(ctx).size.width / 4;
    double y = MediaQuery.of(ctx).size.height / 4;
    //print(x);
    //print(y);
    return Container(
      padding: EdgeInsets.symmetric(vertical: y, horizontal: x),
      child: Center(
          child: Text(
        //'Aun no tienes negocios \nregistrados.',
        message,
        textAlign: TextAlign.center,
      )),
    );
  }
}
