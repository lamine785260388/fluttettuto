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
        primarySwatch: Colors.green,
      ),
      home: Homepage(),
    );
  }
}

// class soir extends StatefulWidget {//statefull
//   const soir({Key? key}) : super(key: key);

//   @override
//   State<soir> createState() => _soirState();
// }

// class _soirState extends State<soir> {
//   var information = "Lamine Traore";
//   @override
//   void initState() {
//     // TODO: implement initState

//     information = "bienvenue sur le tuto";
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(information),
//       ),
//       body: RaisedButton(
//         child: Text('valider'),
//         onPressed: () {
//           print('validation ok');
//           setState(() {
//             information = "change title 2f";
//           });
//         },
//       ),
//     );
//   }
// }

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var value = "Bienvenue chez Lamine Codeur";
  String value1 = "Bienvenue au tuto";
  void onclick() {
    setState(() {
      value = "cava djili comment tu vas";
    });
  }

  void onclick2(String value2) {
    setState(() {
      print("cliquer");
      value1 = value2;
    });
  }

  @override
  Widget build(BuildContext context) {
    var information = "zgz";
    return Scaffold(
      appBar: AppBar(
        title: Text("Raised Bouton"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text(
                "1er bouton",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => onclick(),
            ),
            Text(value, style: TextStyle(color: Colors.green, fontSize: 40)),
            Divider(
              height: 10,
            ),
            RaisedButton(
                child: Text(
                  "2e bouton",
                  style: TextStyle(color: Colors.pink[600]),
                ),
                onPressed: () => onclick2("tutoriel pour les debutant")),
            Text(value1,
                style: TextStyle(
                    color: Colors.blue, fontSize: 40)), //ecrire un text
          ]),
    );
  }
}
