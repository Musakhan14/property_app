import 'package:flutter/material.dart';

import '../Widgets/property_item.dart';
import '../dummy_data.dart/dummy_data.dart';

class AllPropertiesList extends StatelessWidget {
  // final String cTitle;
  // final String cId;
  const AllPropertiesList(
      {
      // required this.cTitle, required this.cId,
      super.key});

  // final properties = PROPERTIES_DATA;
  @override
  Widget build(BuildContext context) {
    //Done on two methods
    // final routeArgs =
    //     ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    // final categoryTitle = routeArgs['title'];
    // final categoryId = routeArgs['id'];
    final properties = PROPERTIES_DATA;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        // title: Text(' ${categoryTitle as String}'),
        title: const Text(' Properties'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return PropertyItem(
            beds: properties[index].beds,
            baths: properties[index].baths,
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
  }
}
