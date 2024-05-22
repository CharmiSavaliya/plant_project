import 'package:flutter/material.dart';
import 'package:plant_project/screens/homescreen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(HomeScreen());
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Notifications"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
                size: 26,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelText: "Search notifications",
              labelStyle: const TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              isDense: true,
            ),
          ),
        ),
      ),
    );
  }
}
