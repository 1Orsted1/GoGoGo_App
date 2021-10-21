import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/auth/login/login_state.dart';
import 'package:flutter_app/util/form_validation.dart';

class CustomTestTextField extends StatelessWidget {
  BuildContext ctx;
  final String hintText;
  final Function(String)? onChangeEvent;

  CustomTestTextField(this.ctx, this.hintText, this.onChangeEvent);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 18,
      child: TextFormField(
        //validator: (value) => (value!.length > 4) ? null : "correo to short",
        onChanged: onChangeEvent,
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
}

