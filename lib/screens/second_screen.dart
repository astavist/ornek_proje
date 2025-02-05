import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(padding:EdgeInsets.only(top: 100)),
            Text('İkinci Ekran', style: TextStyle(fontSize: 50,color: Colors.red),),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Ana Menü',style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}
