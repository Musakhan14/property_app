// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:property_app/Screens/auth/signup_screen.dart';

// import '../../Widgets/category.dart';
// import '../Categories_Screens/houses.dart';

// class CategoryScreen extends StatelessWidget {
//   const CategoryScreen({super.key});
//   // final category = CATEGORIES;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: GridView(
//             // set shrinkWrap to true to size GridView based on its content
//             // physics: NeverScrollableScrollPhysics(),
//             padding: EdgeInsets.zero,
//             scrollDirection: Axis.horizontal,
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               crossAxisSpacing: 0.0,
//               childAspectRatio: 1.50,
//               mainAxisSpacing: 3.0,
//             ),
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => HousesCategory(
//                                 navTitle: 'Houses',
//                               )));
//                 },
//                 child: const Categories(
//                   // cFunction: () {},
//                   cTitle: 'Houses',
//                   icon: Icons.house,
//                 ),
//               ),
//               const Categories(
//                   // cFunction: () {},
//                   icon: FontAwesomeIcons.earthAsia,
//                   cTitle: 'Land'),
//               const Categories(
//                   // cFunction: () {},
//                   icon: Icons.location_city,
//                   cTitle: 'Commercial'),
//               const Categories(
//                   // cFunction: () {},
//                   icon: FontAwesomeIcons.building,
//                   cTitle: 'Apartment'),
//               const Categories(
//                   // cFunction: () {},
//                   icon: FontAwesomeIcons.chair,
//                   cTitle: 'Office'),
//               // Categories(cFunction: () {}, icon: Icons.home, cTitle: 'Houses'),
//               const Categories(
//                   // cFunction: () {},
//                   icon: FontAwesomeIcons.earthAsia,
//                   cTitle: 'Land'),
//               const Categories(
//                   // cFunction: () {},
//                   icon: Icons.location_city,
//                   cTitle: 'Commercial'),
//               const Categories(
//                   // cFunction: () {},
//                   icon: FontAwesomeIcons.building,
//                   cTitle: 'Apartment'),
//               const Categories(
//                   // cFunction: () {},
//                   icon: FontAwesomeIcons.chair,
//                   cTitle: 'Office'),
//               // Categories(cFunction: () {}, icon: Icons.home, cTitle: 'Houses'),
//               const Categories(
//                   // cFunction: () {},
//                   icon: FontAwesomeIcons.earthAsia,
//                   cTitle: 'Land'),
//               const Categories(
//                   // cFunction: () {},
//                   icon: Icons.location_city,
//                   cTitle: 'Commercial'),
//               const Categories(
//                   // cFunction: () {},
//                   icon: FontAwesomeIcons.building,
//                   cTitle: 'Apartment'),
//               const Categories(
//                   // cFunction: () {},
//                   icon: FontAwesomeIcons.chair,
//                   cTitle: 'Office'),
//               // Categories(cFunction: () {}, icon: Icons.home, cTitle: 'Houses'),
//               const Categories(
//                   // cFunction: () {},
//                   icon: FontAwesomeIcons.earthAsia,
//                   cTitle: 'Land'),
//             ],
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';

import '../../Widgets/category_item.dart';
import '../../dummy_data.dart/dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  // final category = CATEGORIES;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
              // set shrinkWrap to true to size GridView based on its content
              // physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 0.0,
                childAspectRatio: 1.50,
                mainAxisSpacing: 3.0,
              ),
              children: CATEGORIES
                  .map((catData) => CategoriesItem(
                        cId: catData.id,
                        cTitle: catData.cTitle,
                        icon: catData.icon,
                      ))
                  .toList()),
        ));
  }
}
