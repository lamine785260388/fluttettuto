import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //centrer le titre
        //permet d'écrire a coté du titre
        title: Text('Tutoriel flutter'),
        backgroundColor: Colors.pink,

        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.thumb_up,
              size: 30,
              color: Colors.black,
            ),
            onPressed: null,
          ),
        ],
      ),
      drawer: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('prog & framework',
                style: TextStyle(
                  color: Color.fromARGB(255, 97, 76, 175),
                  fontSize: 15,
                )),
            decoration: BoxDecoration(color: Colors.green),
          ),
          ListTile(
            title: Text('DART'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('DART'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('DART'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('DART'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "bienvenu au tutoriel #15",
              style: TextStyle(color: Colors.green, fontSize: 25),
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Text(
              'Menue Bar de titre',
              style: TextStyle(
                color: Color.fromARGB(255, 175, 129, 76),
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
