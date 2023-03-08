import 'package:flutter/material.dart';

class RecommendedProperties extends StatelessWidget {
  final String forSale;
  final String location;
  final int price;
  final String image;
  const RecommendedProperties({
    Key? key,
    required this.image,
    required this.forSale,
    required this.location,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          height: 120,
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
