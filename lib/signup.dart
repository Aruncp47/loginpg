import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loginpg/login.dart';
import 'package:loginpg/mainscreen.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  var formkey = GlobalKey<FormState>();
  TextEditingController pass = TextEditingController();
  TextEditingController cpass= TextEditingController();
  bool viewwnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: formkey,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(2.0),
              child: Text("Create an Account,its free"),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.account_box_outlined),
                    label: const Text("Email Id"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
                validator: (text) {
                  if (text!.isEmpty || !(text.contains("@"))) {
                    return "Enter a valid Email id";
                  } else {
                    return null;
                  }
                },textInputAction: TextInputAction.next
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                obscuringCharacter: "*",
                obscureText: viewwnable,
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
                    label: const Text("Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
                validator: (text) {
                  if (text == null || text.length < 6 || text.isEmpty) {
                    return "password doesnt meet criteria";
                  } else {
                    return null;
                  }
                },textInputAction: TextInputAction.next,controller: pass,

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                obscuringCharacter: "*",
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password),
                    label: const Text("Confirm Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
                validator: (text) {if (pass.text!=cpass.text) {
                  return "passwords are not same";
                } else {
                  return null;
                }

                },textInputAction: TextInputAction.next,controller: cpass,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                      minimumSize: const Size(150, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      backgroundColor: Colors.blue),
                  onPressed: () {
                    final isvalid = formkey.currentState!.validate();
                    if (isvalid) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => mainscreen()));
                    }else{
                      Fluttertoast.showToast(
                          msg: "Username or password is incorrect",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                  },
                  child: const Text("Sign Up",
                      style: TextStyle(color: Colors.white))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (signup) => const login()));
                      },
                      child: const Text(
                        "Login",
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
