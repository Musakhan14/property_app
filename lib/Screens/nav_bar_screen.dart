import 'package:flutter/material.dart';

import 'package:property_app/Screens/favorite_screen.dart';
import 'package:property_app/Screens/home_screen.dart';
import 'package:property_app/Screens/profile_screen.dart';
import 'package:property_app/Screens/search_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';

import '../Models/properties_list.dart';
import 'all_properties_screen.dart';

class BNavigationBar extends StatefulWidget {
  final List<PropertiesM> favoriteProperties;
  // ignore: use_key_in_widget_constructors
  const BNavigationBar(
    this.favoriteProperties,
  );
// final List<PropertyItem> favoriteItems;

  @override
  State<BNavigationBar> createState() => _BottomNavigationBarState();
}

List<TabItem> items = const [
  TabItem(
    icon: FontAwesomeIcons.house,
    title: 'Home',
  ),
  TabItem(
    icon: Icons.location_city,
    title: 'Properties',
  ),
  TabItem(
    icon: Icons.search_sharp,
    title: 'Search',
  ),
  TabItem(
    icon: Icons.favorite,
    title: 'Favorite',
  ),
  TabItem(
    icon: Icons.account_box,
    title: 'profile',
  ),
];
int currentIndex = 0;

@override
class _BottomNavigationBarState extends State<BNavigationBar> {
  late List<Widget> _screen;

  @override
  void initState() {
    _screen = [
      const HomePage(),
      const AllPropertiesList(),
      SearchScreen(),
      FavoriteScreen(widget.favoriteProperties),
      const ProfileScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[currentIndex],
      bottomNavigationBar: BottomBarSalomon(
        backgroundSelected: const Color(0xff1E3C64),
        enableShadow: true,
        items: items,
        backgroundColor: Colors.white,
        color: Theme.of(context).primaryColor,
        colorSelected: Theme.of(context).colorScheme.secondary,
        indexSelected: currentIndex,
        onTap: (int index) => setState(
          () {
            currentIndex = index;
          },
        ),
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:property_app/Screens/all_properties_screen.dart';
// import 'package:property_app/Screens/home_screen.dart';
// import 'package:property_app/Screens/search_screen.dart';

// class MyCustomBottomNavigationBar extends StatefulWidget {
//   final Function(int) onTabSelected;
//   final int currentIndex;

//   MyCustomBottomNavigationBar({
//     required this.onTabSelected,
//     required this.currentIndex,
//   });

//   @override
//   _MyCustomBottomNavigationBarState createState() =>
//       _MyCustomBottomNavigationBarState();
// }

// class _MyCustomBottomNavigationBarState
//     extends State<MyCustomBottomNavigationBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 64,
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(20),
//           topRight: Radius.circular(20),
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 3,
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           IconButton(
//             icon: Icon(Icons.home,
//                 color: widget.currentIndex == 0 ? Colors.blue : Colors.grey),
//             onPressed: () {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (context) => HomePage()));
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.search,
//                 color: widget.currentIndex == 1 ? Colors.blue : Colors.grey),
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => SearchScreen()));
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.favorite,
//                 color: widget.currentIndex == 2 ? Colors.blue : Colors.grey),
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => AllPropertiesList()));
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.settings,
//                 color: widget.currentIndex == 3 ? Colors.blue : Colors.grey),
//             onPressed: () {
//               widget.onTabSelected(3);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
