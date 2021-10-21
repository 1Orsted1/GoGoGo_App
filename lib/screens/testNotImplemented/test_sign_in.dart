import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/login_form.dart';
import 'package:flutter_app/widgets/upper_line.dart';

class SignInScreenTest extends StatelessWidget {
  final Color backgroundColor = Color(0xfff95253);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: SingleChildScrollView(
        //child:
        body: Container(
          color: backgroundColor,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              UpperLine(),
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
      );
    //);
  }
}
