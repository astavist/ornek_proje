import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ornek_proje/screens/home_screen.dart';

void main(List<String> args) {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Pacifico"),
      home: HomeScreen(),
    );
  }
}
