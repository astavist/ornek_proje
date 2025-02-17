import 'package:flutter/material.dart';
import 'package:ornek_proje/models/elemanlar_model.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<ElemanlarModel> elemanlar = [
    ElemanlarModel('Samet', 'Öğrenci'),
    ElemanlarModel('Ceren', 'Çalışan')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Builder ve ListView', style: TextStyle(color: Colors.brown)),
        backgroundColor: Colors.pinkAccent.shade100,
        centerTitle: true,),
        body: ListView.separated(
          itemCount: elemanlar.length, 
          itemBuilder: (context, index) => ListTile(
            title: Text(elemanlar[index].title),
            subtitle: Text(elemanlar[index].subtitle),
            trailing: const Icon(Icons.chevron_right),
            tileColor: Colors.grey.shade100,
            // ignore: avoid_print, prefer_interpolation_to_compose_strings
            onTap: () => print(elemanlar[index].title +'  '+ elemanlar[index].subtitle),
          ),
          separatorBuilder: (context, index) => const Divider(),
      )
    );
  }
}
