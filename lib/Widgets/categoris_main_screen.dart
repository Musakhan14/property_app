import 'package:flutter/material.dart';
import 'package:property_app/categories_data.dart';

class Category extends StatelessWidget {
  // Category({super.key, required this.icon, required this.text});
  final category = CATEGORIES;

  Category({super.key});
  // IconData icon;
  // String text;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: category.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    category[index].icon,
                    size: 30,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                Text(
                  category[index].cTitle,
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
