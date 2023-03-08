import 'package:flutter/material.dart';
import 'package:property_app/Widgets/city_item.dart';
import 'package:property_app/dummy_data.dart/dummy_data.dart';

class Cities extends StatelessWidget {
  const Cities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: GridView(
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: .0,
              childAspectRatio: 0.60,
              mainAxisSpacing: 2.0,
            ),
            children: CITIES
                .map((cData) => CityItem(
                      cityId: cData.cityTitle,
                      cityTitle: cData.cityTitle,
                    ))
                .toList()),
      ),
    );
  }
}
