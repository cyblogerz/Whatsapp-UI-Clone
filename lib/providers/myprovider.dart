import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataProvider with ChangeNotifier {
  bool height = false;
  void toggle_height() {
    height = !height;
    notifyListeners();
  }

  double get height_value {
    if (height) return 150;
    return 110;
  }

  bool get getHeight {
    return height;
  }
}
