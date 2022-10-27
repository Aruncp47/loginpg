import 'package:flutter/material.dart';
import 'package:loginpg/login.dart';
import 'package:loginpg/signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: First(),
  ));
}

class First extends StatefulWidget {
  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Text("Hello There!!!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(
                  image: NetworkImage(
                      "https://img.freepik.com/premium-vector/young-people-stydying-together-online-courses_81522-1664.jpg?w=740")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(style: TextButton.styleFrom(minimumSize: const Size(300,50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),backgroundColor: Colors.red),
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>login()));}, child: const Text("LogIn",style: TextStyle(color: Colors.white),))
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(style: TextButton.styleFrom(minimumSize: const Size(300, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),backgroundColor: Colors.blue),
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));}, child: const Text("SignUp",style: TextStyle(color:Colors.white ),))
            )
          ],
        ),
      ),
    );
  }
}
