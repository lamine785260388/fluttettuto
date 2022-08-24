import 'package:flutter/material.dart';
import 'package:tutoflutter1/footer&sheet.dart';
import 'package:tutoflutter1/slider&switch.dart';

import 'Appbar.dart';
import 'Bottom-NavigationBar-BarredeNavigation.dart';
import 'TextField.dart';
import 'drawerMenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.brown,
      // ),
      home: MyStatefulWidget(),
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

// class Homepage extends StatefulWidget {
//   const Homepage({Key? key}) : super(key: key);

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   var value = "Bienvenue chez Lamine Codeur";
//   String value1 = "Bienvenue au tuto";
//   void onclick() {
//     setState(() {
//       value = "cava djili comment tu vas";
//     });
//   }

//   void onclick2(String value2) {
//     setState(() {
//       print("cliquer");
//       value1 = value2;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     var information = "zgz";
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Raised Bouton"), //raised bouton
//       ),
//       body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             RaisedButton(
//               child: Text(
//                 "1er bouton",
//                 style: TextStyle(color: Colors.black),
//               ),
//               onPressed: () => onclick(),
//             ),
//             Text(value, style: TextStyle(color: Colors.green, fontSize: 40)),
//             Divider(
//               height: 10,
//             ),
//             RaisedButton(
//                 child: Text(
//                   "2e bouton",
//                   style: TextStyle(color: Colors.pink[600]),
//                 ),
//                 onPressed: () => onclick2("tutoriel pour les debutant new ")),
//             Text(value1,
//                 style: TextStyle(
//                     color: Colors.blue, fontSize: 40)), //ecrire un text
//           ]),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String value = "";
//   void onshow() {
//     setState(() {
//       value = new DateTime.now().toString();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('FloatAction button'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Text(
//             'value=$value',
//             style: TextStyle(fontSize: 40, color: Colors.blue),
//             textAlign: TextAlign.center,
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () => onshow(),
//         backgroundColor: Colors.red,
//         label: Text('Time'),
//         icon: Icon(Icons.timer),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';//radio

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   static const String _title = 'Flutter Code Sample';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const MyStatefulWidget(),
//       ),
//     );
//   }
// }

// enum SingingCharacter { lafayette, jefferson }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   SingingCharacter? _character = SingingCharacter.lafayette;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         RadioListTile<SingingCharacter>(
//           title: const Text('Lafayette'),
//           value: SingingCharacter.lafayette,
//           groupValue: _character,
//           onChanged: (SingingCharacter? value) {
//             setState(() {
//               _character = value;
//             });
//           },
//         ),
//         RadioListTile<SingingCharacter>(
//           title: const Text('Thomas Jefferson'),
//           value: SingingCharacter.jefferson,
//           groupValue: _character,
//           onChanged: (SingingCharacter? value) {
//             setState(() {
//               _character = value;
//             });
//           },
//         ),
//       ],
//     );
//   }
// }
             //checkbox chapter
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   bool val1 = false;
//   bool val2 = false;
//   bool val3 = false;
//   void change1(bool? value) {
//     setState(() {
//       val1 = value!;
//     });
//   }

//   void change3(bool? value) {
//     setState(() {
//       val3 = value!;
//     });
//   }

//   void change2(bool? t) {
//     setState(() {
//       val2 = t!;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("checkbox")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               "bienvenue chez seydina codeur coder",
//               style: TextStyle(
//                   color: Color.fromARGB(255, 30, 50, 200), fontSize: 15),
//             ),
//             Checkbox(value: val1, onChanged: change1),
//             CheckboxListTile(
//               value: val2,
//               onChanged: change2,
//               title: Text("mon titre"),
//               controlAffinity: ListTileControlAffinity.trailing,
//               subtitle: Text("sous titre"),
//             ),
//             CheckboxListTile(
//               value: val3,
//               onChanged: change3,
//               title: Text("mon titre 3"),
//               controlAffinity: ListTileControlAffinity.trailing,
//               subtitle: Text("sous titre 3"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
