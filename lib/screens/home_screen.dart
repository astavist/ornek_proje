import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ornek_proje/custom_card.dart';
import 'package:ornek_proje/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        title: const Text('PinkyApp', style: TextStyle(color: Colors.brown)),
        backgroundColor: Colors.pinkAccent.shade100,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomCardView(),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                child: Text('ikinci ekran'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade100)),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.deepOrange,
                  size: 60,
                )),
            SizedBox(
              width: 50,
              height: 50,
              child: Card(
                child: Align(alignment: Alignment.center, child: Text('Selam')),
              ),
            ),
            Stack(children: [
              Opacity(
                opacity: 0.6,
                child: Image.asset(
                  'assets/images/kedy.jpg',
                  width: 200,
                ),
              ),
              Positioned(
                  bottom: 20,
                  left: 110,
                  child: Text('0',
                      style: TextStyle(color: Colors.red, fontSize: 50)))
            ])
          ],
        ),
      ),
    );
  }
}
