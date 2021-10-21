import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/bottom_option_buttons.dart';

class SignInScreenTest extends StatefulWidget {
  static final routeName = '/sign-in-screen';

  @override
  _SignInScreenTestState createState() => _SignInScreenTestState();
}

class _SignInScreenTestState extends State<SignInScreenTest> {
  //TODO change all the "backgroundColor" for the Theme from the state...
  final Color backgroundColor = Color(0xfff95253);

  /////////////////////////////////////////////////////////////////////////////
  //List with the 3 first pages (sign_in), register, thanks page (starts empty)
  /////////////////////////////////////////////////////////////////////////////
  late List<Map<String, Object>> _pages;

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  void initState() {
    _pages = [
      {'page': SignInScreenTest(), 'title': 'sign-in'},
      //{'page': },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      body: _pages[_selectedPageIndex]['page'] as Widget,
      body:SignInScreenTest(),
      bottomNavigationBar: BottomAppBar(
        color: backgroundColor,
        child: OptionButtons("Crear cuenta"),
        elevation: 0,
      ),
    );
  }
}
