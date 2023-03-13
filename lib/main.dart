import 'package:flutter/material.dart';
import 'package:property_app/Models/properties_list.dart';
import 'package:property_app/Screens/nav_bar_screen.dart';
import 'package:property_app/Screens/properties_screen.dart';
import 'package:property_app/Screens/property_detail_screen.dart';

import 'Screens/properties_screenb.dart';
import 'Screens/properties_screenc.dart';
import 'Screens/splash_screen.dart';
import 'dummy_data.dart/dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

//create empty list of property items
List<PropertiesM> _favoriteProperties = [];

class _MyAppState extends State<MyApp> {
  void _togglefavorite(String pId) {
    final existingIndex =
        _favoriteProperties.indexWhere((property) => property.id == pId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteProperties.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteProperties
            .add(PROPERTIES_DATA.firstWhere((property) => property.id == pId));
      });
    }
  }

  bool _isPropertyFavorite(String id) {
    return _favoriteProperties.any((property) => property.id == id);
  }

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
      home: const SplashPage(),
      routes: {
        // '/': (context) => const SplashScreen(),
        'BNavigationBar': (context) => BNavigationBar(_favoriteProperties),
        'properties-screen': (context) => const PropertiesList(),
        'PropertyDeatilScreen': (context) =>
            PropertyDeatilScreen(_togglefavorite, _isPropertyFavorite),
        'PropertiesListB': (context) => const PropertiesListB(),
        'PropertiesListC': (context) => const PropertiesListC(),
      },
    );
  }
}
