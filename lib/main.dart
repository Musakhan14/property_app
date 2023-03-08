import 'package:flutter/material.dart';
import 'package:property_app/Screens/properties_screen.dart';
import 'package:property_app/Screens/property_detail_screen.dart';

import 'Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Property App',
      theme: ThemeData(
          primaryColor: const Color(0xff1E3C64),
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          textTheme: const TextTheme(
            titleMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xffEC9E37))),
      home: const SplashScreen(),
      routes: {
        // '/': (context) => const SplashScreen(),
        'properties-screen': (context) => const PropertiesList(),
        'PropertyDeatilScreen': (context) => const PropertyDeatilScreen(),
      },
    );
  }
}
