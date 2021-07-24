import 'package:flutter/material.dart';
import 'package:shopcart/views/shopping_page.dart';

void main() {
  runApp(const Cart());
}

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Cart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoppinPage(),
    );
  }
}
