import 'package:flutter/material.dart';
import 'package:loginpg/signup.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.account_box_outlined),
                      label: const Text("USERNAME"),
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
                      label: const Text("PASSWORD"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                      minimumSize: const Size(150, 40),
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  onPressed: () {},
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
    );
  }
}
