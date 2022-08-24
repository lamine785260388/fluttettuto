import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class snack_bar extends StatefulWidget {
  const snack_bar({Key? key}) : super(key: key);

  @override
  State<snack_bar> createState() => _snack_barState();
}

class _snack_barState extends State<snack_bar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Acceuil',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Builder(
          builder: (context) => FlatButton(
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('hello'),
                ));
              },
              child: Text("show snackbar")),
        ),
        Text("hello"),
      ],
    )));
  }
}
