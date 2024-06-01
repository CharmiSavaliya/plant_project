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
      body: Column(
        children: [
          Container(
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
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(3, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/onee.png'),
                      backgroundColor: Color(0xffF0F4EF),
                    ),
                    title: Text('Jade Plant '),
                    subtitle: Text(
                      '23 mins ago',
                      style: TextStyle(color: Colors.blue),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(3, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/onee.png'),
                      backgroundColor: Color(0xffF0F4EF),
                    ),
                    title: Text('Jade Plant '),
                    subtitle: Text(
                      '23 mins ago',
                      style: TextStyle(color: Colors.blue),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(3, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/onee.png'),
                      backgroundColor: Color(0xffF0F4EF),
                    ),
                    title: Text('Jade Plant '),
                    subtitle: Text(
                      '23 mins ago',
                      style: TextStyle(color: Colors.blue),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(3, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/onee.png'),
                      backgroundColor: Color(0xffF0F4EF),
                    ),
                    title: Text('Jade Plant '),
                    subtitle: Text(
                      '23 mins ago',
                      style: TextStyle(color: Colors.blue),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(3, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/onee.png'),
                      backgroundColor: Color(0xffF0F4EF),
                    ),
                    title: Text('Jade Plant '),
                    subtitle: Text(
                      '23 mins ago',
                      style: TextStyle(color: Colors.blue),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(3, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/onee.png'),
                      backgroundColor: Color(0xffF0F4EF),
                    ),
                    title: Text('Jade Plant '),
                    subtitle: Text(
                      '23 mins ago',
                      style: TextStyle(color: Colors.blue),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(3, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/onee.png'),
                      backgroundColor: Color(0xffF0F4EF),
                    ),
                    title: Text('Jade Plant '),
                    subtitle: Text(
                      '23 mins ago',
                      style: TextStyle(color: Colors.blue),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
