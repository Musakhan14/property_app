import 'package:flutter/material.dart';
import 'package:property_app/dummy_data.dart/dummy_data.dart';

class PropertyDeatilScreen extends StatelessWidget {
  const PropertyDeatilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final propertyId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedProperty = PROPERTIES_DATA.firstWhere(
      (property) => property.id == propertyId,
    );
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('The Property - $propertyId'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 300,
              child: Image.asset('assets/images/land1.jpg', fit: BoxFit.cover),
            ),
            const SizedBox(height: 20),
            const Text(
              'About this Property',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Icon(Icons.directions_car),
                    SizedBox(height: 10),
                    Text('Car'),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.hotel),
                    SizedBox(height: 10),
                    Text('Bed'),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.bathtub),
                    SizedBox(height: 10),
                    Text('Shower'),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.straighten),
                    SizedBox(height: 10),
                    Text('Ruler'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Property Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Property ID'),
                          const Text(':'),
                          Text(selectedProperty.id as String),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Property Type'),
                          Text(':'),
                          Text('Residential'),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Price'),
                          const Text(':'),
                          Text(selectedProperty.pPric as String),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Area'),
                          Text(':'),
                          Text('456 sq. yds.'),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Location'),
                          const Text(':'),
                          Text(selectedProperty.pLocation as String),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Purpose Type'),
                          Text(':'),
                          Text('Sale'),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
