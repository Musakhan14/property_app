import 'package:flutter/material.dart';

import '../Widgets/app_drawer.dart';
import '../properties_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PropertiesList extends StatelessWidget {
  PropertiesList({super.key});

  final properties = PROPERTIES_DATA;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEBEBEB),
      // App Drawer
      drawer: const AppDrawe(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Properties'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          right: 5,
          left: 5,
        ),
        child: ListView.builder(
          itemCount: properties.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image(
                        image:
                            AssetImage(properties[index].pImageUrl as String),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          properties[index].title as String,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          properties[index].pLocation as String,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.bed),
                            const SizedBox(width: 3),
                            Text(
                              ('${properties[index].id as String} '),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 150),
                            const Icon(Icons.mail),
                            const SizedBox(width: 2),
                            const Icon(
                              FontAwesomeIcons.whatsapp,
                              color: Colors.green,
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          ('Price :${properties[index].pPric as String} Crore'),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
