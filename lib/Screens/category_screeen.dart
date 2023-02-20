import 'package:flutter/material.dart';

import '../categories_data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  final category = CATEGORIES;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.builder(
        shrinkWrap:
            true, // set shrinkWrap to true to size GridView based on its content
        // physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0.0,
          childAspectRatio: 1.50,
          mainAxisSpacing: 3.0,
        ),
        itemCount: category.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            // ignore: sized_box_for_whitespace
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        category[index].icon,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      category[index].cTitle,
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
        },
      ),
    );
  }
}
