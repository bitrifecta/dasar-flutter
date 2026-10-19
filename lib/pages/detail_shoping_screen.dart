import 'package:flutter/material.dart';
import 'package:pml/data/barang.dart';
import 'package:pml/domain/barang.dart';

class DetailShopingScreen extends StatelessWidget {
  final String id;
  const DetailShopingScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final barang = list_barang.firstWhere(
      (barang) => barang.id.toString() == id,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Shopping"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Text(barang.nama_barang),
      ),
    );
  }
}
