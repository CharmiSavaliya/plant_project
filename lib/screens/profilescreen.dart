import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileScreen'),
      ),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              foregroundImage: AssetImage("assets/profileimage.png"),
            ),
            Text(
              " Charmi",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
            ),
          ],
        ),
      ),
    );
  }
}
