import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loginpg/mainscreen.dart';
import 'package:loginpg/signup.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var formkey = GlobalKey<FormState>();
  bool viewwnable=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
      child: Form(
        key: formkey,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: Text("Login",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
            ),
            const Padding(
              padding: EdgeInsets.all(2.0),
              child: Text("Welcome back ! Login with your credentials"),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.account_box_outlined),
                    label: const Text("USERNAME"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
                validator: (text) {
                  if (text!.isEmpty || !(text.contains("@"))) {
                    return "Enter a valid Email id";
                  } else {
                    return null;
                  }
                },textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                obscuringCharacter: "*",
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        if(viewwnable){
                          viewwnable=false;
                        }else{
                          viewwnable=true;
                        }

                      });

                    }, icon: Icon(viewwnable==true? Icons.visibility_off:Icons.visibility)),
                    prefixIcon: const Icon(Icons.password),
                    label: const Text("PASSWORD"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
                validator: (text) {
                  if(text==null||text.length<6||text.isEmpty){
                    return "password doesnt meet criteria";
                  }else{
                    return null;
                  }
                },textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                      minimumSize: const Size(150, 40),
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  onPressed: () {
                    final isvalid=formkey.currentState!.validate();
                    if(isvalid){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>mainscreen()));
                    }else{
                      Fluttertoast.showToast(
                          msg: "Username or password is incorrect",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.black12,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                  },
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Not a user?", style: TextStyle(fontSize: 18)),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (login) => signup()));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 18),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
