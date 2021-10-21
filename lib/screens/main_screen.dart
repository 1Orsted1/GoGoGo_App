import 'package:flutter/material.dart';
import 'package:flutter_app/screens/promociones_screen.dart';
import 'package:flutter_app/widgets/main_drawer_item.dart';

import 'mis_negocios_screen.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/main-screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String location = 'promo';
  String testVariable1 = 'A';

  void test1(String letter) {
    setState(() {
      testVariable1 = letter;
    });
    print(testVariable1);
  }

  void changeScreen() {
    setState(() {
      if (location == 'promo') {
        location = 'negocio';
      } else {
        location = 'promo';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('GoGoGo'),
        actions: [
          /*Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  print('added');
                },
                child: const Icon(
                  Icons.add_circle_outline,
                  size: 26.0,
                ),
              )),*/
          IconButton(
            icon: Icon(Icons.add_circle_outline),
            onPressed: () {
              print('Added');
            },
          ),
        ],
      ),
      body: (testVariable1 == 'A') ? MisNegociosScreen() :  PromocionesScreen(),

      drawer: MainDrawer(test1),
      //body: Container(child: Text('Hola mundo')),
    );
  }
}
