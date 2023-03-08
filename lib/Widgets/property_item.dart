import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// A widget that represents a single property item.
class PropertyItem extends StatelessWidget {
  final String pImageUrl;
  final String pTitle;
  final String pLocation;
  final String id;
  final String pPrice;
  final int? baths;
  final int? beds;
  // final Function

  /// Creates a new instance of [PropertyItem].
  ///
  /// The [pImageUrl], [pTitle], [pLocation], [id], and [pPrice] parameters must not be null.
  const PropertyItem({
    Key? key,
    required this.pImageUrl,
    required this.pTitle,
    required this.pLocation,
    required this.id,
    required this.pPrice,
    required this.baths,
    required this.beds,
  }) : super(key: key);

  /// Navigates to the PropertyDetailScreen when the property item is tapped.
  void _selectProperty(BuildContext context) {
    Navigator.pushNamed(
      context,
      'PropertyDeatilScreen',
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return InkWell(
      onTap: () => _selectProperty(context),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Card(
          elevation: 4,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Displays the property image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    pImageUrl,
                    height: 110,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Displays the property title
                      Text(
                        pTitle,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: mediaQuery.size.width * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      // Displays the property location
                      Text(
                        pLocation,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: mediaQuery.size.width * 0.04,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Displays the number of bedrooms and bathrooms
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.bed, size: 23),
                              const SizedBox(width: 5),
                              Text(
                                beds.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 10),
                              const Icon(Icons.bathtub, size: 19),
                              const SizedBox(width: 5),
                              Text(
                                baths.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          // Displays icons for email and whatsapp
                          Row(
                            children: const [
                              Icon(Icons.mail),
                              SizedBox(width: 10),
                              Icon(
                                FontAwesomeIcons.whatsapp,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      // Displays the property price
                      Text(
                        'Price: $pPrice',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: mediaQuery.size.width * 0.04,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
