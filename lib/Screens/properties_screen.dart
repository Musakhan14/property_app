import 'package:flutter/material.dart';

import '../Widgets/property_item.dart';
import '../dummy_data.dart/dummy_data.dart';

class PropertiesList extends StatelessWidget {
  const PropertiesList({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String?>;

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
  }
}
