import 'package:flutter/material.dart';

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
          accentColor: const Color(0xffEC9E37),
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          textTheme: const TextTheme(
            titleMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
      home: const SplashScreen(),
    );
  }
}
