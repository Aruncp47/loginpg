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
      body: GridView.count(crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: List.generate(10, (index) {
          return Padding(padding: EdgeInsets.all(10),child: Container(alignment: Alignment.bottomLeft,child: Text("photos",style: TextStyle(color: Colors.white,fontSize: 25)),
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqpVB_4YM_ArE3SMHRwkd9V8e-TG-v0SZ4ptPBQoqKkA&s"),fit: BoxFit.cover)),
          ),);
        }),)

      

    );
  }
}