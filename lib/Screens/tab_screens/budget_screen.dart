import 'package:flutter/material.dart';
import 'package:property_app/dummy_data.dart/dummy_data.dart';

import '../../Widgets/budget_item.dart';

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
        child: GridView(
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 0.0,
              childAspectRatio: 0.35,
              mainAxisSpacing: 2.0,
            ),
            children: BUDGET
                .map((bData) => BudgetItem(
                      bId: bData.id,
                      budgetTitle: bData.bTitle,
                    ))
                .toList()),
      ),
    );
  }
}
