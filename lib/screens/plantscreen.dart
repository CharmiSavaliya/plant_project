import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    const SizedBox(),
    const cartScreen(),
    const ProfileScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {},
        elevation: 25,
        backgroundColor: const Color(0xff475E3E),
        child: const Icon(
          Icons.qr_code_scanner,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
        child: BottomAppBar(
          color: Colors.white,
          child: Container(
            // color: Colors.white,
            height: 45.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const HomeScreen();
                      currentIndex = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home_rounded,
                        color: currentIndex == 0 ? const Color.fromARGB(255, 45, 111, 79) : Colors.grey,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const FavoriteScreen();
                      currentIndex = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: currentIndex == 1 ? const Color.fromARGB(255, 45, 111, 79) : Colors.grey,
                        size: 30,
                      )
                    ],
                  ),
                ),
                Spacer(),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const cartScreen();
                      currentIndex = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: currentIndex == 2 ? const Color.fromARGB(255, 45, 111, 79) : Colors.grey,
                        size: 30,
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 25),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const ProfileScreen();
                      currentIndex = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: currentIndex == 3 ? const Color.fromARGB(255, 45, 111, 79) : Colors.grey,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
