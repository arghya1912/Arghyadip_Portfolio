import 'package:flutter/material.dart';

class Animation_provider extends ChangeNotifier {
  int numberExampleInput = 0;

  void set_button(int x) {
    numberExampleInput = x;
    notifyListeners();
  }

  int get_button() {
    return numberExampleInput;
  }
}