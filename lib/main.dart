import 'package:flutter/material.dart';
import 'package:cine_review/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cine Review',
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      home: LoginPage(),
    );
  }

}