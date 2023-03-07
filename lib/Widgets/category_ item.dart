import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  final String cId;
  final IconData? icon;
  final String cTitle;
  // final Function cFunction;

  const CategoriesItem({
    super.key,
    // required this.cFunction,
    required this.cId,
    required this.cTitle,
    required this.icon,
  });

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed('properties-screen', arguments: {
      'id': cId,
      'title': cTitle,
    });
  }
  // void selectCategory(BuildContext context) {
  //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
  //     return PropertiesList(
  //       cId: cId,
  //       cTitle: cTitle,
  //     );
  //   }));
  // }
  // void selectCategory(BuildContext context) {
  //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
  //     return HousesCategory(
  //       cId: cId,
  //       cTitle: cTitle,
  //     );
  //   }));
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        // ignore: sized_box_for_whitespace
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  icon,
                  size: 30,
                  color: Colors.grey,
                ),
              ),
              Text(
                cTitle,
                style: const TextStyle(
                  color: Color.fromARGB(255, 129, 125, 125),
                  // color:
                  //     Theme.of(context).colorScheme.secondary,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
