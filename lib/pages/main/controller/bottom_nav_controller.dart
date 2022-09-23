import 'package:flutter/cupertino.dart';

class BottomNavigationController extends ValueNotifier<int> {
  BottomNavigationController._(super.value);

  factory BottomNavigationController.create({required int initialIndex}) =>
      BottomNavigationController._(initialIndex);

  void onBottomNavigationChange(int index) {
    value = index;
  }
}
