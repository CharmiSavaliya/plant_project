import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:plant_project/models/product.dart';
import 'package:plant_project/screens/homescreen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  "Favourites",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: productAll.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: Slidable(
                        endActionPane: ActionPane(
                          motion: ScrollMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (context) {
                                setState(() {
                                  productAll.removeAt(index);
                                });
                              },
                              backgroundColor: Color.fromARGB(255, 54, 98, 43),
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              label: 'Delete',
                            )
                          ],
                        ),
                        child: ListTile(
                          title: Text(
                            productAll[index].plantname,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            productAll[index].discription,
                            overflow: TextOverflow.ellipsis,
                          ),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(productAll[index].image),
                            backgroundColor: Color(0xffF0F4EF),
                          ),
                          trailing: Text(
                            productAll[index].price,
                            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Color(0xff475E3E)),
                          ),
                          tileColor: Color.fromARGB(255, 242, 242, 242),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
