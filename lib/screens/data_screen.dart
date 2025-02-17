import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ornek_proje/models/sebze_model.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  UrunlerModel? _urunler;
  List<Sebze> _veriler = [];

  void _loadData() async {
    final dataString = await rootBundle.loadString('assets/files/data.json');
    final dataJson = jsonDecode(dataString);

    _urunler = UrunlerModel.fromJson(dataJson);
    _veriler = _urunler!.urunler;
    setState(() {});
  }

  void _filterData(int id) {
    _veriler = _urunler!.urunler
        .where((urunlerEleman) => urunlerEleman.kategori == id)
        .toList();

    setState(() {});
  }

  void _resetFilter() {
    _veriler = _urunler!.urunler;

    setState(() {});
  }

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Ekran', style: TextStyle(color: Colors.brown)),
        backgroundColor: Colors.pinkAccent.shade100,
        centerTitle: true,
      ),
      body: Center(
        child: _urunler == null
            ? const Text('Yükleniyor')
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _resetFilter();
                      },
                      child: const Text('Tüm Ürünler')),
                  _kategoriView(),
                  _urunlerView(),
                ],
              ),
      ),
    );
  }

  ListView _urunlerView() {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: _veriler.length,
      itemBuilder: (context, index) {
        final Sebze urun = _veriler[index];
        return ListTile(
          leading: Image.network(urun.resim,
              width: 50, height: 100, fit: BoxFit.cover),
          title: Text(urun.isim),
        );
      },
      separatorBuilder: (context, index) => const Divider(height: 10),
    );
  }

  Row _kategoriView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        _urunler!.kategoriler.length,
        (index) {
          final kategori = _urunler!.kategoriler[index];
          return GestureDetector(
            onTap: () => _filterData(kategori.id),
            child: Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              child: Text(kategori.isim),
            ),
          );
        },
      ),
    );
  }
}
