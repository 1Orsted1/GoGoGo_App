import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/view_without_content_item.dart';


class PromocionesScreen extends StatelessWidget {
  static final routeName = '/promo-screen';

  @override
  Widget build(BuildContext context) {
    String message1 = "Promociones";
    String message2 = "Aun no tienes promociones registradas.";
    return Scaffold(
      body: Container(
        child: ViewWithoutContent(message1, message2),
      ),
    );
  }
}
