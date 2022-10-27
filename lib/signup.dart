import 'package:flutter/material.dart';
import 'package:loginpg/login.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.account_box_outlined),
                  label: const Text("Email Id"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              obscuringCharacter: "*",
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password),
                    label: const Text("Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)))),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
                obscuringCharacter: "*",
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password),
                    label: const Text("Confirm Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(style: TextButton.styleFrom(
                minimumSize: const Size(150, 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                backgroundColor: Colors.blue),
                onPressed: () {}, child: const Text("Sign Up",style: TextStyle(color: Colors.white))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("Already have an account?",style: TextStyle(fontSize: 18),),
                TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (signup)=>const login()));}, child: const Text("Login",style: TextStyle(fontSize: 18),))
              ],
            ),
          ),

      ],
    ),)
    ,
    );
  }
}
