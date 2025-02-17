import 'package:flutter/material.dart';

class KedyScreen extends StatefulWidget {
  const KedyScreen({super.key});

  @override
  State<KedyScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<KedyScreen> {
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
        body: Center(
          child: Column(
            children: [
              Stack(alignment: Alignment.center, 
                children: [
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
                      onTap: () => resetNumber(), child: resButton()
                    )
                  ),
                ]
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Ana Menü',style: TextStyle(fontSize: 20),))
            ]
          )  
        )
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
