import 'package:flutter/material.dart';

import '../Widgets/property_item.dart';
import '../dummy_data.dart/dummy_data.dart';

class PropertiesListC extends StatelessWidget {
  const PropertiesListC({super.key});

  // final String cityTitle;
  // final String cityId;
  // const PropertiesListC(
  // {required this.cityTitle, required this.cityId, super.key});

  // final properties = PROPERTIES_DATA;
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final cityId = routeArgs['id'];
    final cityTitle = routeArgs['title'];

    final properties = PROPERTIES_DATA.where((property) {
      return property.categories!.contains(cityId);
    }).toList();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(' $cityTitle'),
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
