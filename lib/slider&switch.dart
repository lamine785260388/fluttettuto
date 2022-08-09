import 'package:flutter/material.dart';

class slideretswitch extends StatefulWidget {
  const slideretswitch({Key? key}) : super(key: key);

  @override
  State<slideretswitch> createState() => _slideretswitchState();
}

class _slideretswitchState extends State<slideretswitch> {
  bool val1 = false;
  bool val2 = false;
  double val3 = 0.0;

  void change1(bool? t) {
    setState(() {
      val1 = t!;
    });
  }

  void change3(double t) {
    setState(() {
      val3 = t;
    });
  }

  void change2(bool t) {
    setState(() {
      val2 = t;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("slider & switch")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Switch(
            value: val1,
            onChanged: change1,
            activeColor: Colors.green,
          ),
          SwitchListTile(
            value: val2,
            onChanged: change2,
            activeColor: Colors.green,
            title: Text(
              "valider slide et switch ",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            'slider',
            style: TextStyle(color: Colors.green),
          ),
          Slider(value: val3, onChanged: change3),
          Text("${(val3 * 100).round()}"),
        ],
      )),
    );
  }
}
