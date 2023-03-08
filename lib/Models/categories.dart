import 'package:flutter/material.dart';

class Categories {
  final IconData icon;
  final String id;
  final String cTitle;

  Categories({
    required this.id,
    required this.cTitle,
    required this.icon,
  });
  // : assert(icon is IconData || icon is Widget,
  // 'TabItem only support IconData and Widget');
}
