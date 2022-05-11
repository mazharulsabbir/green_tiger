import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/model/category/category.dart';
import '../screens/main/index.dart';
import 'product/product_by_category_controller.dart';

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
    if (index == 1) {
      ProductByCategoryController.to.getProductByCategory(
        const CategoryModel(id: -1, name: 'All', image: "null"),
      );
    }
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
    if (_widgets.length > 5) {
      _widgets.removeLast();
      _index.value = _widgets.length - 1;
    }
    debugPrint(
      "_widgets.length: ${_widgets.length}, Current Index: ${_index.value}, Active Index: $activeIndex",
    );
    update();
  }

  //todo: pushAndReplace, pushAndRemoveUntil, pushAndRemoveUntilWithIndex, pushAndRemoveUntilWithWidget

  void clear() {
    _widgets.clear();
    update();
  }
}
