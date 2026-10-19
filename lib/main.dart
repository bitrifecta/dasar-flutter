import 'package:flutter/material.dart';
import 'package:pml/pages/detail_shoping_screen.dart';
import 'package:pml/pages/shoping_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      initialRoute: '/',
      routes: {
        '/': (context) => ShopingScreen(),
        '/detail': (context) => DetailShopingScreen(),
      },
    );
  }
}
