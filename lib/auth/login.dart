// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          const Text(
            "Log In",
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Username",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40.0,
            padding: const EdgeInsets.only(
              right: 20.0,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: Border.all(width: 3.0),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(
                15.0,
                0.0,
                15.0,
                0.0,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "E-mail Addreess",
                ),
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),        ),
              ],
            ),
          ),
          Container(
            height: 40.0,
            padding: EdgeInsets.only(
              right: 20.0,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: Border.all(width: 3.0),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                15.0,
                0.0,
                15.0,
                0.0,
              ),
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                ),
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            height: 40.0,
            color: const Color.fromARGB(255, 62, 197, 255),
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
            onPressed: () {},
            child: const Text(
              "Log In",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
