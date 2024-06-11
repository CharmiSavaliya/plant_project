import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_project/screens/cart_provider.dart';
import 'package:plant_project/screens/favourite_provider.dart';
import 'package:plant_project/screens/plantscreen.dart';
import 'package:provider/provider.dart';
import 'package:plant_project/screens/welcomescreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen') ?? false;
  runApp(
    MyApp(
      seen: seen,
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool seen;
  const MyApp({super.key, required this.seen,});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
            ),
            home: seen ? const PlantScreen() : WelcomeScreen(),
          );
        },
      ),
    );
  }
}
