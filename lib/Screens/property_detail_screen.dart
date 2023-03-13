// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:property_app/dummy_data.dart/dummy_data.dart';

class PropertyDeatilScreen extends StatelessWidget {
  final Function togglefavorite;
  final Function isFavorite;
  // ignore: use_key_in_widget_constructors
  const PropertyDeatilScreen(this.togglefavorite, this.isFavorite);

  @override
  Widget build(BuildContext context) {
    final propertyId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedProperty = PROPERTIES_DATA.firstWhere(
      (property) => property.id == propertyId,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('${selectedProperty.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: 300,
            child: Image.asset(selectedProperty.pImageUrl as String,
                fit: BoxFit.cover),
          ),
          const SizedBox(height: 20),
          const Text(
            'About this Property',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
            indent: 0,
            endIndent: 0,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Icon(Icons.directions_car),
                  SizedBox(
                    width: 8,
                  ),
                  SizedBox(height: 10),
                  Text('Car'),
                ],
              ),
              Column(
                children: const [
                  Icon(Icons.hotel),
                  SizedBox(
                    width: 8,
                  ),
                  SizedBox(height: 10),
                  Text('Bed'),
                ],
              ),
              Column(
                children: const [
                  Icon(Icons.bathtub),
                  SizedBox(
                    width: 8,
                  ),
                  SizedBox(height: 10),
                  Text('Shower'),
                ],
              ),
              Column(
                children: const [
                  Icon(Icons.straighten),
                  SizedBox(
                    width: 8,
                  ),
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
          const Divider(
            thickness: 1,
            color: Colors.grey,
            indent: 0,
            endIndent: 0,
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
          const Text(
            'Description',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
            indent: 0,
            endIndent: 0,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'This property is located in a prime area with easy access to all amenities such as schools, hospitals, shopping centers, and public transportation. It features spacious rooms, ample parking, and a beautiful garden. The property is perfect for families looking for a comfortable home in a great neighborhood. Don\'t miss this opportunity to own your dream home!',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Divider(
            thickness: 1,
            color: Colors.grey,
            indent: 10,
            endIndent: 10,
          ),
          const Text(
            'Features',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.check, color: Colors.green),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('Kitchen'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.check, color: Colors.green),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('Parking'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.check, color: Colors.green),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('TV Lounge'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.check, color: Colors.green),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('Water'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.check, color: Colors.green),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('Electricity'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.check, color: Colors.green),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('Balcony'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(Icons.check, color: Colors.green),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('Rooftop'),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.check, color: Colors.green),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('Kitchen'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.check, color: Colors.green),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('Parking'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.check, color: Colors.green),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('TV Lounge'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.check, color: Colors.green),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('Water'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.check, color: Colors.green),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('Electricity'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.check, color: Colors.green),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('Balcony'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(Icons.check, color: Colors.green),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text('Rooftop'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
            indent: 10,
            endIndent: 10,
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffEC9E37),
        child: Icon(
          isFavorite(propertyId) ? Icons.star : Icons.star_border,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: () => togglefavorite(propertyId),
      ),
    );
  }
}
