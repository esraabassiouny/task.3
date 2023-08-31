import 'package:ecommerce/Screens/Widgets/products.dart';
import 'package:flutter/material.dart';

class Home_Decoration extends StatelessWidget {
  const Home_Decoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: const Text('E-Commerce APP'),
      ),
      body:Category_Products() ,
    );
  }
}
