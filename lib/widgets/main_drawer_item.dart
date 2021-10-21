import 'package:flutter/material.dart';
import 'package:flutter_app/screens/mis_negocios_screen.dart';
import 'package:flutter_app/screens/promociones_screen.dart';

class MainDrawer extends StatelessWidget {
  final String userName = 'Anon';

  final String mail = 'Anon@gmail.com';

  final Function(String) changeHelper;

  MainDrawer(this.changeHelper);

  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
        ),
      ),
      onTap: () {
        tapHandler();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
              color: Theme.of(context).primaryColor,
              //color: Colors.redAccent,
              height: 95,
              width: double.infinity,
              padding: EdgeInsets.all(25),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      userName,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      mail,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(height: 20),
          buildListTile('Tus Negocios', Icons.apartment, () {
            changeHelper('A');
            Navigator.of(context).pop();
          }),
          buildListTile('Promociones', Icons.star, () {
            changeHelper('B');
            Navigator.of(context).pop();
          }),
        ],
      ),
    );
  }
}
