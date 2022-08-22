import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class appbar extends StatefulWidget {
  const appbar({Key? key}) : super(key: key);

  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  int value = 0;
  void add() {
    setState(() {
      value++;
    });
  }

  void sous() {
    setState(() {
      value--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //centrer le titre
        //permet d'écrire a coté du titre
        title: Text('Tutoriel flutter'),
        backgroundColor: Colors.pink,
        leading: Icon(
          Icons.fastfood,
          size: 30,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.file_download,
              size: 30,
            ),
            onPressed: sous,
          ),
          IconButton(
            icon: Icon(
              Icons.file_upload,
              size: 30,
            ),
            onPressed: add,
          )
          // Icon(
          //   Icons.file_download,
          //   size: 30,

          // ),
          // Icon(
          //   Icons.file_upload,
          //   size: 30,

          // ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "bienvenu au tutoriel Appbar youtube",
              style: TextStyle(color: Colors.green, fontSize: 25),
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Text(
              '$value',
              style: TextStyle(
                  color: Color.fromARGB(255, 175, 129, 76), fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
