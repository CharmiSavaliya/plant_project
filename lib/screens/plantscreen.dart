import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_project/cartscreen.dart';
import 'package:plant_project/screens/favouritescreen.dart';
import 'package:plant_project/screens/homescreen.dart';
import 'package:plant_project/screens/profilescreen.dart';
import 'package:plant_project/screens/scannerscreen.dart';

class PlantScreen extends StatefulWidget {
  const PlantScreen({super.key});

  @override
  State<PlantScreen> createState() => _PlantScreenState();
}

class _PlantScreenState extends State<PlantScreen> {
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  List screens = [
    const HomeScreen(),
    const FavoriteScreen(),
    const ScannerScreen(),
    const cartScreen(),
    const ProfileScreen(),
  ];

  List<BottomDataModel> bottomDataList = [
    BottomDataModel(icon: Icons.home, indextext: 0),
    BottomDataModel(icon: Icons.favorite, indextext: 1),
    BottomDataModel(icon: Icons.shopping_cart, indextext: 3),
    BottomDataModel(icon: Icons.person, indextext: 4),
  ];

  void _onitemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(108)),
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const ScannerScreen(),
              ));
        },
        elevation: 25,
        backgroundColor: const Color(0xff475E3E),
        child: Icon(
          Icons.qr_code_scanner,
          color: Colors.white,
        ),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        height: 55.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.r),
            topRight: Radius.circular(50.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomDataList.length,
            (index) => GestureDetector(
                onTap: () {
                  _onitemTapped(index);
                },
                child: InkWell(
                  onTap: () {
                    _onitemTapped(bottomDataList[index].indextext);
                  },
                  child: SizedBox(
                    height: 50.h,
                    width: 50.w,
                    child: Icon(
                      bottomDataList[index].icon,
                      size: 30,
                      color: bottomDataList[index].indextext == currentIndex
                          ? const Color.fromARGB(255, 73, 99, 63)
                          : const Color.fromARGB(255, 207, 204, 204),
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}

class BottomDataModel {
  final IconData icon;
  final int indextext;

  BottomDataModel({
    required this.icon,
    required this.indextext,
  });
}
