import 'package:flutter/material.dart';

import '../Screens/properties_screenc.dart';

class CityItem extends StatelessWidget {
  final String cityId;
  final String cityTitle;
  const CityItem({
    super.key,
    required this.cityId,
    required this.cityTitle,
  });
  void selectCategory(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PropertiesListC(
                  cityId: cityId,
                  cityTitle: cityTitle,
                )));
  }
  // void selectCategory(BuildContext context) {
  //   Navigator.of(context).pushNamed('PropertiesListB', arguments: {
  //     'id': bId,
  //     'title': budgetTitle,
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      child: Text(
        cityTitle,
        style: const TextStyle(
          color: Color.fromARGB(255, 129, 125, 125),
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
