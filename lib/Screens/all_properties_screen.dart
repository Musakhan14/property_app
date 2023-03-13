import 'package:flutter/material.dart';

import '../Widgets/property_item.dart';
import '../dummy_data.dart/dummy_data.dart';

class AllPropertiesList extends StatefulWidget {
  const AllPropertiesList({super.key});

  @override
  State<AllPropertiesList> createState() => _AllPropertiesListState();
}

class _AllPropertiesListState extends State<AllPropertiesList> {
  @override
  Widget build(BuildContext context) {
    final properties = PROPERTIES_DATA;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
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
