import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_project/screens/favourite_provider.dart';
import 'package:provider/provider.dart';
import 'package:plant_project/models/product.dart';
import 'package:plant_project/screens/cart_provider.dart';

class DetailScreen extends StatefulWidget {
  final ProductModel productdata;
  DetailScreen({Key? key, required this.productdata}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    final cartProvider = Provider.of<CartProvider>(context);
    bool isFavorite = favoriteProvider.isFavorite(widget.productdata);

    return Scaffold(
      backgroundColor: const Color(0xffF0F4EF),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: ScreenUtil().screenWidth,
                    height: ScreenUtil().screenHeight / 1.7,
                    decoration: const BoxDecoration(
                      color: Color(0xffF0F4EF),
                    ),
                    child: Image.asset(
                      widget.productdata.image,
                      height: 10,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 30,
                    child: CircleAvatar(
                      backgroundColor: const Color(0xffB5C9AD),
                      radius: 15.r,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isFavorite) {
                              favoriteProvider.removeFavorite(widget.productdata);
                            } else {
                              favoriteProvider.addFavorite(widget.productdata);
                            }
                            isFavorite = !isFavorite;
                          });
                        },
                        child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
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
                      onTap: () => Navigator.of(context).pop(),
                      child: CircleAvatar(
                        backgroundColor: const Color(0xffB5C9AD),
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
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 400,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.productdata.plantname,
                      style: const TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          widget.productdata.price,
                          style: const TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 35.h,
                          width: 105.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xffF0F4EF),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 4,
                                blurRadius: 10,
                                offset: Offset(3, 5),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                child: Image.asset(
                                  "assets/minus.png",
                                  height: 50.0.h,
                                ),
                                onTap: decrementQuantity,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '$quantity',
                                style: const TextStyle(fontSize: 20),
                              ),
                              const SizedBox(width: 4),
                              InkWell(
                                overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                child: Image.asset(
                                  "assets/add.png",
                                  height: 50.0.h,
                                ),
                                onTap: incrementQuantity,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rounded,
                          color: Color.fromARGB(255, 238, 197, 15),
                          size: 25,
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          widget.productdata.rating,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'About Plant',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          widget.productdata.discription,
                          style: const TextStyle(color: Color.fromARGB(255, 166, 166, 166)),
                        ),
                        const SizedBox(height: 10),
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
                                onTap: () {
                                  cartProvider.addToCart(widget.productdata, quantity);

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      duration: Duration(microseconds: 200),
                                      content: Text('${widget.productdata.plantname} added to cart'),
                                    ),
                                  );
                                },
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
