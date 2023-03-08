import 'package:flutter/material.dart';
import 'package:property_app/Screens/auth/signup_screen.dart';
import 'package:property_app/Screens/contact_us_screen.dart';

import '../Screens/home_screen.dart';
import '../Screens/properties_screen.dart';
import '../Screens/term_policy.dart';

class AppDrawe extends StatelessWidget {
  const AppDrawe({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: const Color(0xffEBEBEB), // shape: DrawerThemeData,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Image(
                        image: AssetImage(
                          'assets/images/Logo.png',
                        ),
                        height: 40,
                        width: 40,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Property Advisor',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage()));
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            'Login or create Account',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.location_city,
                color: Colors.black,
              ),
              title: const Text('Properties'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PropertiesList()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.contact_page,
                color: Colors.black,
              ),
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactUScreen()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.padding,
                color: Colors.black,
              ),
              title: const Text('Term and Policies'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TermPolicies()));
              },
            ),
          ],
        ));
  }
}
