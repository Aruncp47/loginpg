import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listseperated(),
  ));
}

class Listseperated extends StatelessWidget {
  var datas = <String>['data1', 'data2', 'data3'];
  var colors = <int>[600, 400, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My list"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              color: Colors.red[colors[index]],
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Text(datas[index]),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Icon(
              Icons.account_tree,
              color: Colors.green[colors[index]],
            );
          },
          itemCount: datas.length),
    );
  }
}
