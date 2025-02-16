import 'package:flutter/material.dart';
import 'loginpage.dart'; // Import the login screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyLogin(), // Set MyLogin as the initial screen
      debugShowCheckedModeBanner: false,
    );
  }
}
