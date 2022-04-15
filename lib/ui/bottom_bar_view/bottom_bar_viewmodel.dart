import 'package:flutter/material.dart';

class BottomBarViewModel extends ChangeNotifier {
  int _bottomBarIndex = 0;
  int get bottomBarIndex => _bottomBarIndex;

  void onTap(int index) {
    _bottomBarIndex = index;
    notifyListeners();
  }
}
