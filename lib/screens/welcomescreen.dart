import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_project/screens/plantscreen.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  Future<void> _navigateToScreen(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('seen', true);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const PlantScreen()),
    );
  }

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ShapeOfView(
            shape: ArcShape(
              direction: ArcDirection.Outside,
              height: 20.h,
              position: ArcPosition.Bottom,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.4,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xffF0F4EF),
              ),
              child: Image.asset("assets/splash1.png"),
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            "Create Your \nOwn Garden!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.h),
          InkWell(
            onTap: () => widget._navigateToScreen(context),
            child: Container(
              height: 45.h,
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              decoration: BoxDecoration(
                color: const Color(0xff475E3E),
                borderRadius: BorderRadius.circular(42.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Let's Start",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 25.w),
                  Container(
                    padding: EdgeInsets.all(4.0.r),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 0.8.w),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                      size: 18.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
