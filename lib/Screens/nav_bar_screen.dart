// import 'package:flutter/material.dart';

// import 'package:property_app/Screens/favorite_screen.dart';
// import 'package:property_app/Screens/home_screen.dart';
// import 'package:property_app/Screens/profile_screen.dart';
// import 'package:property_app/Screens/properties_screen.dart';
// import 'package:property_app/Screens/search_screen.dart';

// import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';

// class BNavigationBar extends StatefulWidget {
//   const BNavigationBar({super.key});

//   @override
//   State<BNavigationBar> createState() => _BottomNavigationBarState();
// }

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
// int visit = 0;
// List<Widget> _screen = [
//   const HomePage(),
//   PropertiesList(),
//   const SearchScreen(),
//   const FavoriteScreen(),
//   const ProfileScreen(),
// ];

// class _BottomNavigationBarState extends State<BNavigationBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screen[visit],
//       bottomNavigationBar: BottomBarSalomon(
//         backgroundSelected: const Color(0xff1E3C64),
//         enableShadow: true,
//         items: items,
//         backgroundColor: Colors.white,
//         color: Theme.of(context).primaryColor,
//         colorSelected: Theme.of(context).accentColor,
//         indexSelected: visit,
//         onTap: (int index) => setState(
//           () {
//             visit = index;
//           },
//         ),
//       ),
//     );
//   }
// }
