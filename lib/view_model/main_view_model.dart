import 'package:flutter/material.dart';

class MainViewModel with ChangeNotifier {
  int _selectedTab = 0;

  int get selectedTab => _selectedTab;

  void moveTab(int index) {
    _selectedTab = index;
    notifyListeners();
  }
}