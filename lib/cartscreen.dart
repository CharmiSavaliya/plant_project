import 'package:flutter/material.dart';
import 'package:plant_project/screens/plantscreen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const PlantScreen(),
                ));
          },
          child: Text('CartScreen'),
        ),
      ),
    );
  }
}
