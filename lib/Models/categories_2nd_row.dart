import 'package:flutter/material.dart';

class CategoriesSecondRow {
  final IconData? icon;
  final String cTitle;

  CategoriesSecondRow({
    required this.cTitle,
    required this.icon,
  });
  // : assert(icon is IconData || icon is Widget,
  // 'TabItem only support IconData and Widget');
}
