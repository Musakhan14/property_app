import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Screens/properties_screen.dart';

class BudgetItem extends StatelessWidget {
  final String bId;
  final String? BudgetTitle;
  const BudgetItem({
    super.key,
    required this.bId,
    this.BudgetTitle,
  });
  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed('properties-screen', arguments: {
      'id': bId,
      'title': BudgetTitle,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      child: Text(
        BudgetTitle as String,
        style: const TextStyle(
          color: Color.fromARGB(255, 129, 125, 125),
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
