import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FooterSheet extends StatefulWidget {
  const FooterSheet({Key? key}) : super(key: key);

  @override
  State<FooterSheet> createState() => _FooterSheetState();
}

class _FooterSheetState extends State<FooterSheet> {
  String value = "";

  void show(String a) => setState(() => value = a);

  void bouton_sheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "tuto",
                  style: TextStyle(color: Colors.green, fontSize: 20),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //centrer le titre
        //permet d'écrire a coté du titre
        title: Text('Tutoriel flutter'),
        backgroundColor: Color.fromRGBO(216, 233, 30, 1),

        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.thumb_up,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () => show("U aime"),
          ),
        ],
      ),
      persistentFooterButtons: <Widget>[
        IconButton(
          icon: Icon(Icons.zoom_out_map),
          onPressed: () => show("Map zoom"),
        ),
        IconButton(
          icon: Icon(Icons.account_balance_wallet),
          onPressed: () => show("wallet"),
        ),
        IconButton(
          icon: Icon(Icons.add_comment),
          onPressed: () => show("info bank"),
        ),
      ],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: bouton_sheet,
              child: Text("cliquez ici"),
            ),
            Text(
              "Bienvenue chez la mine coder",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Text(
              "#16 Tuto-footer & sheet button",
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Text(
              "$value",
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 106, 76, 175)),
            ),
          ],
        ),
      ),
    );
  }
}
