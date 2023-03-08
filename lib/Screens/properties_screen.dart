import 'package:flutter/material.dart';

import '../Widgets/property_item.dart';
import '../dummy_data.dart/dummy_data.dart';

class PropertiesList extends StatelessWidget {
  // final String cTitle;
  // final String cId;
  const PropertiesList(
      {
      // required this.cTitle, required this.cId,
      super.key});

  // final properties = PROPERTIES_DATA;
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final properties = PROPERTIES_DATA.where((property) {
      return property.categories!.contains(categoryId);
    }).toList();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(' ${categoryTitle as String}'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return PropertyItem(
            baths: properties[index].baths,
            beds: properties[index].beds,
            id: properties[index].id as String,
            pImageUrl: properties[index].pImageUrl as String,
            pLocation: properties[index].pLocation as String,
            pPrice: properties[index].pPric as String,
            pTitle: properties[index].title as String,
          );
        },
        itemCount: properties.length,
      ),
    );
    // Scaffold(
    //   backgroundColor: Colors.white, // App Drawer
    //   drawer: const AppDrawe(),
    //   appBar: AppBar(
    //     backgroundColor: Theme.of(context).primaryColor,
    //     title: Text(categoryTitle as String),
    //   ),
    //   body: Padding(
    //     padding: const EdgeInsets.only(
    // top: 15,
    // right: 5,
    // left: 5,
    //     ),
    //     child: ListView.builder(
    //       itemCount: properties.length,
    //       itemBuilder: (context, index) {
    //         return Card(
    //           color: Colors.white,
    //           child: Padding(
    //             padding: const EdgeInsets.all(5.0),
    //             child: Row(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 ClipRRect(
    //                   borderRadius: BorderRadius.circular(8),
    //                   child: Image(
    //                     image:
    //                         AssetImage(properties[index].pImageUrl as String),
    //                     height: 100,
    //                     width: 100,
    //                     fit: BoxFit.cover,
    //                   ),
    //                 ),
    //                 const SizedBox(width: 4),
    //                 Column(
    //                   mainAxisAlignment: MainAxisAlignment.start,
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Text(
    //                       properties[index].title as String,
    //                       style: const TextStyle(
    //                         color: Colors.black,
    //                         fontSize: 22,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                     const SizedBox(height: 3),
    //                     Text(
    //                       properties[index].pLocation as String,
    //                       style: const TextStyle(
    //                         color: Colors.black,
    //                         fontSize: 18,
    //                       ),
    //                     ),
    //                     const SizedBox(height: 5),
    //                     Row(
    //                       children: [
    //                         const Icon(Icons.bed),
    //                         const SizedBox(width: 3),
    //                         Text(
    //                           ('${properties[index].id as String} '),
    //                           style:
    //                               const TextStyle(fontWeight: FontWeight.bold),
    //                         ),
    //                         const SizedBox(width: 150),
    //                         const Icon(Icons.mail),
    //                         const SizedBox(width: 2),
    //                         const Icon(
    //                           FontAwesomeIcons.whatsapp,
    //                           color: Colors.green,
    //                         ),
    //                       ],
    //                     ),
    //                     const SizedBox(height: 4),
    //                     Text(
    //                       ('Price :${properties[index].pPric as String}'),
    //                       style: const TextStyle(
    //                         color: Colors.black,
    //                         fontSize: 18,
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ),
    //         );
    //       },
    //     ),
    //   ),
    // );
  }
}
