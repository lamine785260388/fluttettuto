import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: soir(),
    );
  }
}

class soir extends StatefulWidget {
  const soir({Key? key}) : super(key: key);

  @override
  State<soir> createState() => _soirState();
}

class _soirState extends State<soir> {
  var information = "Lamine Traore";
  @override
  void initState() {
    // TODO: implement initState

    information = "bienvenue sur le tuto";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(information),
      ),
      body: RaisedButton(
        child: Text('valider'),
        onPressed: () {
          print('validation ok');
          setState(() {
            information = "change title 2f";
          });
        },
      ),
    );
  }
}
