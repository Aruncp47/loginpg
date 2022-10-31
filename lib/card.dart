import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Cardex(),
  ));
}

class Cardex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Cards")),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 50),
            child: Wrap(
              direction: Axis.horizontal,spacing: 15,runSpacing: 15,
              children: <Widget>[
                Row(
                  children: [
                    Card(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child:Container(
                          width: 180,
                          height: 70,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              ListTile(
                                leading: Icon(Icons.home,size: 40),
                                title: Text("Home",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              )

                            ],
                          )

                      ),
                    ),
                    const SizedBox(width: 10,),
                    Card(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child:Container(
                          width: 180,
                          height: 70,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              ListTile(
                                leading: Icon(Icons.phone,size: 40),
                                title: Text("Phone",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              )

                            ],
                          )

                      ),
                    ),
                  ],
                ),  Row(
                  children: [
                    Card(
                      color: Colors.yellow,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child:Container(
                          width: 180,
                          height: 70,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              ListTile(
                                leading: Icon(Icons.message,size: 40),
                                title: Text("Message",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              )

                            ],
                          )

                      ),
                    ),
                    const SizedBox(width: 10,),
                    Card(
                      color: Colors.cyan,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child:Container(
                          width: 180,
                          height: 70,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              ListTile(
                                leading: Icon(Icons.camera_alt,size: 40),
                                title: Text("Camera",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              )

                            ],
                          )

                      ),
                    ),
                  ],
                ),  Row(
                  children: [
                    Card(
                      color: Colors.pink,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child:Container(
                          width: 180,
                          height: 70,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              ListTile(
                                leading: Icon(Icons.alarm),
                                title: Text("Alarm",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              )

                            ],
                          )

                      ),
                    ),
                    SizedBox(width: 10,),
                    Card(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child:Container(
                          width: 180,
                          height: 70,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              ListTile(
                                leading: Icon(Icons.wallet,size: 40),
                                title: Text("Wallet",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              )

                            ],
                          )

                      ),
                    ),
                  ],
                ),  Row(
                  children: [
                    Card(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child:Container(
                          width: 180,
                          height: 70,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              ListTile(
                                leading: Icon(Icons.facebook,size: 40),
                                title: Text("Facebook",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              )

                            ],
                          )

                      ),
                    ),
                    const SizedBox(width: 10,),
                    Card(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child:Container(
                          width: 180,
                          height: 70,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              ListTile(
                                leading: Icon(Icons.whatsapp,size: 40),
                                title: Text("Whatsapp",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              )

                            ],
                          )

                      ),
                    ),
                  ],
                ),  Row(
                  children: [
                    Card(
                      color: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child:Container(
                          width: 180,
                          height: 70,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              ListTile(
                                leading: Icon(Icons.add_alert_sharp,size: 40),
                                title: Text("Reminder",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              )

                            ],
                          )

                      ),
                    ),
                    const SizedBox(width: 10,),
                    Card(
                      color: Colors.teal,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child:Container(
                          width: 180,
                          height: 70,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              ListTile(
                                leading: Icon(Icons.ac_unit_outlined,size: 40),
                                title: Text("Weather",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              )

                            ],
                          )

                      ),
                    ),
                  ],
                )
              ],
            ),

          ),

    );
  }
}
