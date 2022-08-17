import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class textfiel extends StatefulWidget {
  const textfiel({Key? key}) : super(key: key);

  @override
  State<textfiel> createState() => _textfielState();
}

class _textfielState extends State<textfiel> {
  String value = "";
  void sub(String s) {
    setState(() {
      value = 'message envoyé $s:';
    });
  }

  void affichage(String a) {
    setState(() {
      value = 'Bienvenue $a';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Textfield")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              value,
              style: TextStyle(fontSize: 25, color: Colors.red),
              textAlign: TextAlign.center,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Nom",
                  hintText: "Entrer votre nom",
                  icon: Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 25,
                  )),
              keyboardType: TextInputType.text,
              autocorrect: true,
              autofocus: true,
              onChanged: affichage,
              onSubmitted: sub,
            ),
            TextField(
                decoration: InputDecoration(
                    labelText: "Phone",
                    hintText: "Entrer votre numéro",
                    icon: Icon(
                      Icons.phone,
                      color: Colors.blue,
                      size: 25,
                    )),
                keyboardType: TextInputType.number),
            TextField(
              decoration: InputDecoration(
                  labelText: "Mot de passe",
                  hintText: "Entrer votre mot de passe",
                  icon: Icon(
                    Icons.lock,
                    color: Colors.red,
                    size: 25,
                  )),
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
