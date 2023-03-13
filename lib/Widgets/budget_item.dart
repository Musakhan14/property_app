import 'package:flutter/material.dart';

class BudgetItem extends StatelessWidget {
  final String bId;
  final String budgetTitle;
  const BudgetItem({
    super.key,
    required this.bId,
    required this.budgetTitle,
  });
  // void selectCategory(BuildContext context) {
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //           builder: (context) => PropertiesListB(
  //                 bTitle: budgetTitle,
  //                 bId: bId,
  //               )));
  // }
  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed('PropertiesListB', arguments: {
      'id': bId,
      'title': budgetTitle,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      child: Text(
        budgetTitle,
        style: const TextStyle(
          color: Color.fromARGB(255, 129, 125, 125),
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
