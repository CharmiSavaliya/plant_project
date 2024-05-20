import 'package:flutter/material.dart';

Widget allHome({required kPrimaryColor}) {
  return Container(
    child: Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        primary: false,
        childAspectRatio: 0.83,
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffF0F4EF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffB5C9AD),
                    radius: 12,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 17,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/one.png",
                      height: 145,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Jade Plant",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Center(
                                child: Text(
                                  "\$40.00",
                                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xff475E3E)),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 40),
                        CircleAvatar(
                          backgroundColor: Color(0xffB5C9AD),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffF0F4EF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffB5C9AD),
                    radius: 12,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 17,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/two.png",
                      height: 145,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Cactus",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Center(
                                child: Text(
                                  "\$23.00",
                                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xff475E3E)),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 70),
                        CircleAvatar(
                          backgroundColor: Color(0xffB5C9AD),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffF0F4EF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffB5C9AD),
                    radius: 12,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 17,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/three.png",
                      height: 145,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Philodendron",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Center(
                                child: Text(
                                  "\$30.00",
                                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xff475E3E)),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 15),
                        CircleAvatar(
                          backgroundColor: Color(0xffB5C9AD),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffF0F4EF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffB5C9AD),
                    radius: 12,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 17,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/four.png",
                      height: 145,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Monstera",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Center(
                                child: Text(
                                  "\$35.00",
                                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xff475E3E)),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 40),
                        CircleAvatar(
                          backgroundColor: Color(0xffB5C9AD),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffF0F4EF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffB5C9AD),
                    radius: 12,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 17,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/one.png",
                      height: 145,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Jade Plant",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Center(
                                child: Text(
                                  "\$40.00",
                                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xff475E3E)),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 40),
                        CircleAvatar(
                          backgroundColor: Color(0xffB5C9AD),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffF0F4EF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffB5C9AD),
                    radius: 12,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 17,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/one.png",
                      height: 145,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Jade Plant",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Center(
                                child: Text(
                                  "\$40.00",
                                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xff475E3E)),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 40),
                        CircleAvatar(
                          backgroundColor: Color(0xffB5C9AD),
                          radius: 12,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget indoor({required kPrimaryColor}) {
  return Container();
}

Widget outdoor({required kPrimaryColor}) {
  return Container();
}

Widget cactus({required kPrimaryColor}) {
  return Container();
}

Widget rose({required kPrimaryColor}) {
  return Container();
}

Widget neem({required kPrimaryColor}) {
  return Container();
}
