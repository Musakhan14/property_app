// import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
// import 'package:awesome_bottom_bar/tab_item.dart';
import 'package:flutter/material.dart';
// import 'package:property_app/Screens/properties_screen.dart';
// import 'package:property_app/Screens/search_screen.dart';

import '../Widgets/app_drawer.dart';
import '../Widgets/categoris_main_screen.dart';
import '../Widgets/recommende_properties.dart';
// import 'favorite_screen.dart';
// import 'profile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// List<TabItem> items = const [
//   TabItem(
//     icon: Icons.home,
//     title: 'Home',
//   ),
//   TabItem(
//     icon: Icons.location_city,
//     title: 'Properties',
//   ),
//   TabItem(
//     icon: Icons.search_sharp,
//     title: 'Search',
//   ),
//   TabItem(
//     icon: Icons.favorite,
//     title: 'Cart',
//   ),
//   TabItem(
//     icon: Icons.account_box,
//     title: 'profile',
//   ),
// ];
// int visit = 1;
// List<Widget> _screen = [
//   const HomePage(),
//   PropertiesList(),
//   const SearchScreen(),
//   const FavoriteScreen(),
//   const ProfileScreen(),
// ];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F3F3),
      // App Drawer
      drawer: const AppDrawe(),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.person_outlined))
        ],
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'mProperty',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  color: Theme.of(context).primaryColor),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Search for Houses and Lands',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.done),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Theme.of(context).primaryColor,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Categories',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: Category(),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Recommended',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      RecommendedProperties(
                        forSale: 'For Sale',
                        location: 'UOM',
                        price: 100000,
                      ),
                      SizedBox(width: 5),
                      RecommendedProperties(
                        forSale: 'For Sale',
                        location: 'UOM',
                        price: 100000,
                      ),
                      SizedBox(width: 5),
                      RecommendedProperties(
                        forSale: 'For Sale',
                        location: 'UOM',
                        price: 100000,
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomBarSalomon(
      //   backgroundSelected: const Color(0xff1E3C64),
      //   enableShadow: true,
      //   items: items,
      //   backgroundColor: Colors.white,
      //   color: Theme.of(context).primaryColor,
      //   colorSelected: Theme.of(context).accentColor,
      //   indexSelected: visit,
      //   onTap: (int index) => setState(
      //     () {
      //       visit = index;
      //     },
      //   ),
      // ),
    );
  }
}
