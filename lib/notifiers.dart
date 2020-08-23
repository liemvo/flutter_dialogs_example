import 'package:examples_dialogs/data.dart';
import 'package:flutter/material.dart';

class SingleNotifier extends ChangeNotifier {
  String _currentCountry = countries[0];
  SingleNotifier();

  String get currentCountry => _currentCountry;

  updateCountry(String value) {
    if (value != _currentCountry) {
      _currentCountry = value;
      notifyListeners();
    }
  }
}

class MultipleNotifier extends ChangeNotifier {
  List<String> _selecteItems;
  MultipleNotifier(this._selecteItems);
  List<String> get selectedItems => _selecteItems;

  bool isHaveItem(String value) => _selecteItems.contains(value);

  addItem(String value) {
    if (!isHaveItem(value)) {
      _selecteItems.add(value);
      notifyListeners();
    }
  }

  removeItem(String value) {
    if (isHaveItem(value)) {
      _selecteItems.remove(value);
      notifyListeners();
    }
  }
}
