import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plant_project/models/product.dart';
import 'package:plant_project/screens/detailscreen.dart';

import 'package:plant_project/screens/notificationscreen.dart';
import 'package:plant_project/screens/profilescreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get kPrimaryColor => null;
  int seletected = 0;
  late List<bool> checked;
  

  @override
  void initState() {
    super.initState();
    checked = List<bool>.filled(productAll.length, false);

    _controller.addListener(() {
      setState(() {});
    });
  }

  List items = [
    'All',
    'Indoor',
    'Outdoor',
    'Cactus',
    'Rose',
  ];
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              topBar(context: context),
              location(),
              SizedBox(height: 20.h),
              search(),
              SizedBox(height: 20.h),
              category(),
              SizedBox(height: 20.h),
              Listview(),
              SizedBox(height: 15.h),
              cardView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget topBar({required BuildContext context}) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              )),
          child: CircleAvatar(
            radius: 30.r,
            foregroundImage: const AssetImage("assets/profileimage.png"),
          ),
        ),
        SizedBox(width: 10.w),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xffD0D5DD),
              ),
            ),
            Text(
              "Charmi",
              style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w500, color: Color(0xff344054)),
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 21.r,
          backgroundColor: const Color(0xffF2F4F7),
          child: InkWell(
            overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
            child: Image.asset(
              "assets/noo.png",
              height: 50.0.h,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotificationScreen()),
              );
            },
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 14.0.w, vertical: 10.0.h);
  }

  Widget location() {
    return Row(
      children: [
        Icon(
          Icons.location_on_sharp,
          color: const Color(0xffD0D5DD),
          size: 20.h,
        ),
        SizedBox(width: 6.w),
        Text(
          "Surat, Gujarat",
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xffD0D5DD),
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 16.0.w, vertical: 00.h);
  }

  Widget search() {
    return Container(
      width: Get.width,
      height: 40.0.h,
      margin: EdgeInsets.symmetric(horizontal: 10.0.w),
      padding: EdgeInsets.symmetric(horizontal: 10.0.w),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r), color: const Color(0xffF2F4F7)),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          prefixIcon: Container(
            height: 50.h,
            width: 50.w,
            alignment: Alignment.center,
            child: Image.asset(
              "assets/search.png",
              height: 25.h,
              width: 25.w,
            ),
          ),
          suffixIcon: _controller.text.isNotEmpty
              ? IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    _controller.clear();
                  },
                )
              : Image.asset("assets/setting.png"),
          border: InputBorder.none,
          fillColor: const Color(0xffF2F4F7),
          filled: true,
          hintText: "Search here",
          hintStyle: TextStyle(fontSize: 20.sp, color: Color(0xff98A2B3)),
        ),
      ),
    );
  }

  Widget category() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Category',
          style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
        ),
      ],
    ).marginSymmetric(horizontal: 10.0.w, vertical: 00.h);
  }

  // ignore: non_constant_identifier_names
  Widget Listview() {
    return SizedBox(
      height: 35.h,
      width: double.infinity,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            splashFactory: NoSplash.splashFactory,
            onTap: () {
              setState(() {
                seletected = index;
              });
            },
            child: Container(
              height: 30.h,
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              margin: EdgeInsets.symmetric(horizontal: 5.0.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29.r),
                border:
                    Border.all(color: seletected != index ? const Color(0xffD0D5DD) : Colors.transparent, width: 1.5),
                color: seletected == index ? const Color(0xff475E3E) : Colors.transparent,
              ),
              child: Center(
                child: Text(
                  items[index],
                  style: TextStyle(
                    color: seletected != index ? const Color(0xffD0D5DD) : Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget cardView() {
    List<ProductModel> productList = [];
    if (seletected != 0) {
      productList.addAll(productAll.where((element) => element.categoryId == seletected).toList());
    } else {
      productList.addAll(productAll);
    }
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: (50 / 75), crossAxisSpacing: 0, mainAxisSpacing: 0),
        scrollDirection: Axis.vertical,
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(5.r),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            decoration: BoxDecoration(
              color: const Color(0xffF0F4EF),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Image.asset(
                      productAll[index].image,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productAll[index].plantname,
                              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 4.0.h),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0.r),
                              ),
                              child: Center(
                                child: Text(
                                  productAll[index].price,
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp, color: Color(0xff475E3E)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                      productdata: productAll[index],
                                    )),
                          ),
                          child: CircleAvatar(
                            backgroundColor: const Color(0xffB5C9AD),
                            radius: 12.r,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20.h,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Positioned(
                  right: 5,
                  top: 10,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffB5C9AD),
                    radius: 10.r,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          checked[index] = !checked[index];
                        });
                      },
                      child: Icon(
                        checked[index] ? Icons.favorite : Icons.favorite_border_outlined,
                        color: Colors.red,
                        size: 15.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
