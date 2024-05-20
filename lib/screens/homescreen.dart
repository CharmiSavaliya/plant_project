import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_project/screens/notificationscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get kPrimaryColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    foregroundImage: AssetImage("assets/profileimage.png"),
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff98A283),
                        ),
                      ),
                      Text(
                        "Charmi",
                        style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500, color: Color(0xff344054)),
                      ),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                      radius: 21,
                      backgroundColor: Color(0xffF2F4F7),
                      child: InkWell(
                        child: Image.asset(
                          "assets/noo.png",
                          height: 50.0,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NotificationScreen()),
                          );
                        },
                      ))
                ],
              ).marginSymmetric(horizontal: 16.0, vertical: 10),
              Row(
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    color: Color(0xffD0D5DD),
                    size: 30,
                  ),
                  SizedBox(width: 6),
                  Text(
                    "Surat, Gujarat",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffD0D5DD),
                    ),
                  ),
                ],
              ).marginSymmetric(horizontal: 16.0, vertical: 16.0),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xffF2F4F7)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Container(
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                child: Image.asset(
                                  "assets/search.png",
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                              suffixIcon: Image.asset("assets/setting.png"),
                              border: InputBorder.none,
                              fillColor: Color(0xffF2F4F7),
                              filled: true,
                              hintText: "Search here",
                              hintStyle: TextStyle(fontSize: 24, color: Color(0xff98A2B3))),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Text(
                              'Category ',
                              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: 45,
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              color: Color(0xff475E3E),
                            ),
                            child: Center(
                              child: Text(
                                "All",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            margin: EdgeInsets.only(left: 10.0),
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              border: Border.all(color: Color(0xff475E3E), width: 1.5),
                            ),
                            child: Center(
                              child: Text(
                                "Indoor",
                                style: TextStyle(color: Color(0xffD0D5DD), fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            margin: EdgeInsets.only(left: 10.0),
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              border: Border.all(color: Color(0xff475E3E), width: 1.5),
                            ),
                            child: Center(
                              child: Text(
                                "Outdoor",
                                style: TextStyle(color: Color(0xffD0D5DD), fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            margin: EdgeInsets.only(left: 10.0),
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              border: Border.all(color: Color(0xff475E3E), width: 1.5),
                            ),
                            child: Center(
                              child: Text(
                                "Cactus",
                                style: TextStyle(color: Color(0xffD0D5DD), fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            margin: EdgeInsets.only(left: 10.0),
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              border: Border.all(color: Color(0xff475E3E), width: 1.5),
                            ),
                            child: Center(
                              child: Text(
                                "Rose",
                                style: TextStyle(color: Color(0xffD0D5DD), fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            margin: EdgeInsets.only(left: 10.0),
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              border: Border.all(color: Color(0xff475E3E), width: 1.5),
                            ),
                            child: Center(
                              child: Text(
                                "Neem",
                                style: TextStyle(color: Color(0xffD0D5DD), fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
