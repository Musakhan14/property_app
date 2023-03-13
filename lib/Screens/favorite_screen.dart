import 'package:flutter/material.dart';
import 'package:property_app/Widgets/app_drawer.dart';

import '../Models/properties_list.dart';
import '../Widgets/property_item.dart';

class FavoriteScreen extends StatelessWidget {
  final List<PropertiesM> favoriteProperties;
  // ignore: use_key_in_widget_constructors
  const FavoriteScreen(this.favoriteProperties);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const AppDrawe(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Your Favorites'),
      ),
      body: favoriteProperties.isEmpty
          ? const Center(
              child: Text('You have no favorites yet - start adding some'),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return PropertyItem(
                  baths: favoriteProperties[index].baths,
                  beds: favoriteProperties[index].beds,
                  id: favoriteProperties[index].id as String,
                  pImageUrl: favoriteProperties[index].pImageUrl as String,
                  pLocation: favoriteProperties[index].pLocation as String,
                  pPrice: favoriteProperties[index].pPric as String,
                  pTitle: favoriteProperties[index].title as String,
                );
              },
              itemCount: favoriteProperties.length,
            ),
    );
  }
}
