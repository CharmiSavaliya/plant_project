import 'package:flutter/material.dart';
import 'package:plant_project/cartscreen.dart';
import 'package:plant_project/screens/favouritescreen.dart';
import 'package:plant_project/screens/homescreen.dart';
import 'package:plant_project/screens/profilescreen.dart';

class PlantScreen extends StatefulWidget {
  const PlantScreen({super.key});

  @override
  State<PlantScreen> createState() => _PlantScreenState();
}

class _PlantScreenState extends State<PlantScreen> {
  int currentIndex = 0;

  List screens = [
    const HomeScreen(),
    const FavoriteScreen(),
    const cartScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            tooltip: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Wishlist",
            tooltip: "WishList",
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            tooltip: "Profile",
            icon: Center(
              child: Badge(label: Text('3'), child: Icon(Icons.person)),
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            tooltip: "Profile",
            icon: Center(
              child: Badge(label: Text('3'), child: Icon(Icons.person)),
            ),
          ),
        ],
      ),
    );
  }
}
