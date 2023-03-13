import 'package:flutter/material.dart';

class RecommendedProperties extends StatelessWidget {
  final String forSale;
  final String location;
  final String price;
  final String image;
  final String id;

  const RecommendedProperties({
    required this.id,
    Key? key,
    required this.image,
    required this.forSale,
    required this.location,
    required this.price,
  }) : super(key: key);
  void _selectProperty(BuildContext context) {
    Navigator.pushNamed(
      context,
      'PropertyDeatilScreen',
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectProperty(context),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.height * 0.21,
              height: MediaQuery.of(context).size.height * 0.13,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffEBEBEB),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              forSale,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                // fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  size: 18,
                ),
                Text(
                  location,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  'Starting From :',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  price.toString(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
//      bottomNavigationBar:AnimatedBottomNavigationBar(
//       icons: iconList,
//       activeIndex: _bottomNavIndex,
//       gapLocation: GapLocation.center,
//       notchSmoothness: NotchSmoothness.verySmoothEdge,
//       leftCornerRadius: 32,
//       rightCornerRadius: 32,
//       onTap: (index) => setState(() => _bottomNavIndex = index),
//       //other params
//    ),
// );
  }
}
