import 'package:flutter/material.dart';

class CustomCardView extends StatelessWidget {
  const CustomCardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      margin: EdgeInsets.all(20),
      width: 100,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 5,
                spreadRadius: 3,
                offset: Offset(0, 2))
              ]),
          alignment: Alignment.topCenter,
          child: Text('Selamm', style: TextStyle(color: Colors.black)),
    );
  }
}