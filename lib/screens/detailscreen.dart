// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:plant_project/models/product.dart';
import 'package:plant_project/screens/homescreen.dart';

// ignore: must_be_immutable
class DetailScreen extends StatefulWidget {
  Product productdata;
  DetailScreen({Key? key, required this.productdata}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool checked = true;
  int quantity = 0;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity >= 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F4EF),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: ScreenUtil().screenWidth,
                    height: 516,
                    decoration: BoxDecoration(
                      color: Color(0xffF0F4EF),
                    ),
                    child: Image.asset(
                      widget.productdata.image,
                      height: 20,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 30,
                    child: CircleAvatar(
                      backgroundColor: Color(0xffB5C9AD),
                      radius: 15.r,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            checked = !checked;
                          });
                        },
                        child: Icon(
                          checked ? Icons.favorite : Icons.favorite_border_outlined,
                          color: Colors.red,
                          size: 18.h,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 30,
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(HomeScreen()),
                      child: CircleAvatar(
                        backgroundColor: Color(0xffB5C9AD),
                        radius: 15.r,
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                          size: 18.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.productdata.plantname,
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          widget.productdata.price,
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 21.r,
                          backgroundColor: const Color(0xffF2F4F7),
                          child: InkWell(
                            overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
                            child: Image.asset(
                              "assets/minus.png",
                              height: 50.0.h,
                            ),
                            onTap: decrementQuantity,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '$quantity',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(width: 5),
                        CircleAvatar(
                          radius: 21.r,
                          backgroundColor: const Color(0xffF2F4F7),
                          child: InkWell(
                            overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
                            child: Image.asset(
                              "assets/add.png",
                              height: 50.0.h,
                            ),
                            onTap: incrementQuantity,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_rounded,
                          color: Color.fromARGB(255, 238, 197, 15),
                          size: 25,
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          widget.productdata.rating,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About Plant',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          widget.productdata.discription,
                          style: TextStyle(color: Color.fromARGB(255, 166, 166, 166)),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 40.h,
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          decoration: BoxDecoration(
                            color: const Color(0xff475E3E),
                            borderRadius: BorderRadius.circular(42.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "Buy Now!",
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
