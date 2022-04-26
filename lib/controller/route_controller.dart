import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/main/index.dart';

mixin RouteController on GetxController {
  final _widgets = <Widget>[
    const HomeScreen(),
    const ExploreScreen(),
    const CartScreen(),
    const OfferScreen(),
    const AccountScreen()
  ].obs;

  List<Widget> get widgets => _widgets;

  final _index = 0.obs;
  int get activeIndex => _index.value;

  final _navIndex = 0.obs;
  int get navIndex => _navIndex.value;

  void setCurrentIndex(int index) {
    _index.value = index;
    _navIndex.value = index;
    _widgets.removeRange(5, _widgets.length);
    debugPrint(
      "_widgets.length: ${_widgets.length}, Current Index: ${_index.value}, Active Index: $activeIndex",
    );
    update();
  }

  void addNewWidget(Widget widget) {
    _widgets.add(widget);
    _index.value = _widgets.length - 1;
    debugPrint(
      "_widgets.length: ${_widgets.length}, Current Index: ${_index.value}, Active Index: $activeIndex",
    );
    update();
  }

  void removeLastWidget() {
    _widgets.removeLast();
    _index.value = _widgets.length - 1;
    debugPrint(
      "_widgets.length: ${_widgets.length}, Current Index: ${_index.value}, Active Index: $activeIndex",
    );
    update();
  }

  void clear() {
    _widgets.clear();
    update();
  }
}
