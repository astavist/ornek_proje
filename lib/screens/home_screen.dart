// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:ornek_proje/custom_card.dart';
import 'package:ornek_proje/screens/data_screen.dart';
import 'package:ornek_proje/screens/kedy_screen.dart';
import 'package:ornek_proje/screens/null_safety_screen.dart';
import 'package:ornek_proje/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 248, 250),
      appBar: AppBar(
        title: const Text('PinkyApp', style: TextStyle(color: Colors.brown)),
        backgroundColor: Colors.pinkAccent.shade100,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomCardView(),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                child: Text('Builder ve ListView'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade100)),
            
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => KedyScreen()));
                },
                child: Text('Stack ve Stful Widget'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade100)),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NullSafetyScreen()));
                },
                child: Text('Null Safety'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade100)),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DataScreen()));
                },
                child: Text('JSON Data'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade100)),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.deepOrange,
                  size: 60,
                )),
          ],
        ),
      ),
    );
  }
}
