import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  List<Widget> _propertyItem = [];
  List<Widget> get propertyItem => _propertyItem;

  void toggleFavorite(Widget propertyItem) {
    final isExist = _propertyItem.contains(propertyItem);
    if (isExist) {
      _propertyItem.remove(propertyItem);
    } else {
      _propertyItem.add(propertyItem);
    }
    notifyListeners();
  }

  void clearFavorite() {
    _propertyItem = [];
    notifyListeners();
  }
}
