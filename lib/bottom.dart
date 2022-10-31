import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Bottomnav(),
  ));
}

class Bottomnav extends StatefulWidget {
  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  var bodies = [
    Card(
        color: Colors.red,
        child: Padding(padding: EdgeInsets.all(50.0), child: Text("home"))),
    Card(
        color: Colors.cyan,
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Text("Search"),
        )),
    Card(
        color: Colors.yellow,
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Text("Favourites"),
        )),
    Card(
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Text("profile"),
        ))
  ];
  int selectedindex = 0;

  void onitemtap(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottombar")),
      body: Center(
        child: bodies.elementAt(selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.yellow,
          backgroundColor: Colors.black,
          currentIndex: selectedindex,
          onTap: onitemtap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "favourites"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "profile")
          ]),
    );
  }
}
