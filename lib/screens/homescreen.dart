import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:plant_project/models/product.dart';
import 'package:plant_project/screens/detailscreen.dart';
import 'package:plant_project/screens/favourite_provider.dart';
import 'package:plant_project/screens/notificationscreen.dart';
import 'package:plant_project/screens/profilescreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int seletected = 0;
  late List<bool> checked;
  String searchQuery = '';
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    checked = List<bool>.filled(productAll.length, false);

    _controller.addListener(() {
      setState(() {
        searchQuery = _controller.text;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<String> items = ['All', 'Indoor', 'Outdoor', 'Cactus', 'Rose'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            topBar(context: context),
            location(),
            SizedBox(height: 20),
            search(),
            SizedBox(height: 20),
            category(),
            SizedBox(height: 20),
            listview(),
            SizedBox(height: 15),
            cardView(),
          ],
        ),
      ),
    );
  }

  Widget topBar({required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            ),
            child: CircleAvatar(
              radius: 30,
              foregroundImage: const AssetImage("assets/profileimage.png"),
            ),
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
                  color: const Color(0xffD0D5DD),
                ),
              ),
              Text(
                "Charmi",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff344054),
                ),
              ),
            ],
          ),
          const Spacer(),
          CircleAvatar(
            radius: 21,
            backgroundColor: const Color(0xffF2F4F7),
            child: InkWell(
              overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
              child: Image.asset(
                "assets/noo.png",
                height: 50.0,
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
      ),
    );
  }

  Widget location() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: Row(
        children: [
          SizedBox(height: 20),
          Icon(
            Icons.location_on_sharp,
            color: const Color(0xffD0D5DD),
            size: 20,
          ),
          SizedBox(width: 6),
          Text(
            "Surat, Gujarat",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: const Color(0xffD0D5DD),
            ),
          ),
        ],
      ),
    );
  }

  Widget search() {
    return Container(
      width: double.infinity,
      height: 40.0.h,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffF2F4F7),
      ),
      child: TextField(
        controller: _controller,
        textAlignVertical: TextAlignVertical.center,
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
          suffixIcon: _controller.text.isNotEmpty
              ? IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    _controller.clear();
                    setState(() {
                      searchQuery = '';
                    });
                  },
                )
              : Image.asset("assets/setting.png"),
          border: InputBorder.none,
          fillColor: const Color(0xffF2F4F7),
          filled: true,
          hintText: "Search here",
          hintStyle: TextStyle(fontSize: 20, color: Color(0xff98A2B3)),
        ),
      ),
    );
  }

  Widget category() {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Category',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget listview() {
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
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                border: Border.all(
                  color: seletected != index ? const Color(0xffD0D5DD) : Colors.transparent,
                  width: 1.5,
                ),
                color: seletected == index ? const Color(0xff475E3E) : Colors.transparent,
              ),
              child: Center(
                child: Text(
                  items[index],
                  style: TextStyle(
                    color: seletected != index ? const Color(0xffD0D5DD) : Colors.white,
                    fontSize: 16,
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

    // Filter products based on the search query
    if (searchQuery.isNotEmpty) {
      productList = productList.where((product) {
        return product.plantname.toLowerCase().contains(searchQuery.toLowerCase());
      }).toList();
    }

    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (50 / 75),
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        scrollDirection: Axis.vertical,
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    productdata: productList[index],
                  ),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              decoration: BoxDecoration(
                color: const Color(0xffF0F4EF),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        productList[index].image,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productList[index].plantname,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                child: Center(
                                  child: Text(
                                    productList[index].price,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff475E3E),
                                    ),
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
                                  productdata: productList[index],
                                ),
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: const Color(0xffB5C9AD),
                              radius: 12,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
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
                      radius: 15,
                      child: GestureDetector(
                        onTap: () {
                          final favoriteProvider = Provider.of<FavoriteProvider>(context, listen: false);
                          setState(() {
                            if (favoriteProvider.isFavorite(productList[index])) {
                              favoriteProvider.removeFavorite(productList[index]);
                            } else {
                              favoriteProvider.addFavorite(productList[index]);
                            }
                          });
                        },
                        child: Consumer<FavoriteProvider>(
                          builder: (context, favoriteProvider, child) {
                            return Icon(
                              Icons.favorite,
                              color: favoriteProvider.isFavorite(productList[index]) ? Colors.red : Colors.white,
                              size: 18,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
