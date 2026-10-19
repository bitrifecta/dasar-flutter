import 'package:flutter/material.dart';
import 'package:pml/data/barang.dart';

class ShopingScreen extends StatelessWidget {
  const ShopingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping List"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: list_barang.length,
          itemBuilder: (context, index) {
            final barang = list_barang[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/detail', arguments: barang);
              },
              child: Container(
                color: Colors.tealAccent,
                margin: EdgeInsets.symmetric(vertical: 3),
                padding: EdgeInsets.all(5),
                child: Text(barang.nama_barang),
              ),
            );
          },
        ),
      ),
    );
  }
}
