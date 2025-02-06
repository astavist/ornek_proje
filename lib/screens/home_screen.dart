import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ornek_proje/custom_card.dart';
import 'package:ornek_proje/screens/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  void incrementNumber() {
    setState(() {
      counter++;
    });
  }

  void resetNumber() {
    setState(() {
      counter = 0;
    });
  }

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
            Stack(alignment: Alignment.center, children: [
              Opacity(
                opacity: 0.6,
                child: Image.asset(
                  'assets/images/kedy.jpg',
                  width: 200,
                ),
              ),
              Positioned(bottom: 20, left: 110, child: catText()),
              Positioned(
                bottom: 20,
                left: 55,
                child: GestureDetector(
                  onTap: () => incrementNumber(),
                  child: tapButton(),
                ),
              ),
              Positioned(
                  bottom: 100,
                  left: 80,
                  child: GestureDetector(
                      onTap: () => resetNumber(),
                       child: resButton())),
            ])
          ],
        ),
      ),
    );
  }

  Container resButton() {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
    );
  }

  Container tapButton() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
    );
  }

  Text catText() {
    return Text(
      '$counter',
      style: TextStyle(color: Colors.red, fontSize: 50));
  }
}
