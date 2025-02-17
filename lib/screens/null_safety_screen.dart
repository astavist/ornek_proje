import 'package:flutter/material.dart';

class NullSafetyScreen extends StatefulWidget {
  const NullSafetyScreen({super.key});

  @override
  State<NullSafetyScreen> createState() => _NullSafetyScreenState();
}

class _NullSafetyScreenState extends State<NullSafetyScreen> {
  List? veriler;
  //burada eleman olmasa da oluşturabiliyoruz

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NullSafety', style: TextStyle(color: Colors.brown)),
        backgroundColor: Colors.pinkAccent.shade100,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [Text(veriler?[1] ?? 'Eleman yok')],
        ),
      ),
    );
  }
}
