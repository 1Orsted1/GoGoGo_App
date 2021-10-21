import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/view_without_content_item.dart';

class MisNegociosScreen extends StatelessWidget {
  static final routeName = '/negocios-screen';

  @override
  Widget build(BuildContext context) {
    String message1 = "Tus negocios";
    String message2 = "Aun no tienes negocios registrados.";
    return Scaffold(
      body: Container(
        child: ViewWithoutContent(message1, message2),
      ),
    );
  }
}
//Todo Se puede usar un stack para los mini forms de creacion y en el fondo ponerle
//https://stackoverflow.com/questions/53019061/how-to-implement-a-custom-dialog-box-in-flutter
