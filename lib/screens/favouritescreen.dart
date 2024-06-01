import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_project/screens/favouritecontroller.dart';
import 'package:plant_project/screens/plantscreen.dart';

class FavoriteScreen extends StatelessWidget {
  final FavoriteController favoriteController = Get.find<FavoriteController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PlantScreen(),
                  ));
            },
            child: Text('Favorite Products')),
      ),
      body: Obx(
        () {
          return GridView.builder(
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (50 / 75),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: favoriteController.favorites.length,
            itemBuilder: (context, index) {
              final product = favoriteController.favorites[index];
              return Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color(0xffF0F4EF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Image.asset(product.image),
                        Spacer(),
                        Text(product.plantname, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                        Container(
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25.0)),
                          child: Center(
                            child: Text(product.price,
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff475E3E))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 5,
                    child: GestureDetector(
                      onTap: () {
                        favoriteController.removeFavorite(product);
                      },
                      child: CircleAvatar(
                        backgroundColor: Color(0xffB5C9AD),
                        radius: 15,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
