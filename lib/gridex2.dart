import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Gridex()));
}

class Gridex extends StatelessWidget {
  var icons = <Icon>[
    Icon(Icons.ac_unit_outlined),
    Icon(Icons.add_alert_sharp),
    Icon(Icons.add),
    Icon(Icons.ac_unit_outlined),
    Icon(Icons.ac_unit_outlined),
    Icon(Icons.ac_unit_outlined),
    Icon(Icons.ac_unit_outlined),
    Icon(Icons.ac_unit_outlined)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("mygrid")),
        body: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.yellow,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.pink,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.teal,
              ),
            )
          ],
        ));
  }
}
