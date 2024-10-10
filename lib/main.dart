// ignore_for_file: depend_on_referenced_packages, unused_import, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'auth/login.dart';
import 'fireStroe-connections/fireStore_connection.dart';
import 'package:firebase_core/firebase_core.dart'; // Added import for Firebase initialization

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensures that Firebase initializes before the app starts
  await Firebase.initializeApp(); // Initializes Firebase

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
