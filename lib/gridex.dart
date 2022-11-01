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
      body: GridView.builder(
        padding: EdgeInsets.all(20),
          itemCount: icons.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20),
          itemBuilder: (context, index) {
            return icons[index];
          }),
    );
  }
}