import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  BuildContext ctx;
  final String hintText;

  CustomTextField(this.ctx, this.hintText);

  @override
  Widget build(BuildContext context) {
    return _customTextField(ctx, hintText);
  }
}

Widget _customTextField(context, hintText) {
  return Container(
    height: MediaQuery.of(context).size.height / 18,
    child: TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(8.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.05,
            color: Colors.black38),
      ),
    ),
  );
}
