import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_project/screens/homescreen.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ShapeOfView(
            shape: ArcShape(direction: ArcDirection.Outside, height: 20, position: ArcPosition.Bottom),
            child: Container(
              height: Get.height / 1.4,
              width: Get.width,
              decoration: BoxDecoration(
                color: Color(0xffF0F4EF),
              ),
              child: Image.asset("assets/splash1.png"),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Create Your \nOwn Garden!",
            style: const TextStyle(
              fontSize: 35,
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            decoration: BoxDecoration(
              color: Color(0xff475E3E),
              borderRadius: BorderRadius.circular(42),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Let's Start",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 25),
                Container(
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.8),
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                      size: 18,
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
