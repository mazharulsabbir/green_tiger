import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/product/product_by_category_controller.dart';
import 'widget/product_list_tile_widget.dart';
import 'widget/product_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductByCategoryScreen extends GetView<ProductByCategoryController> {
  const ProductByCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${controller.category?.name}'),
      ),
      body: controller.obx(
        (state) => SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: List.generate(
              state?.length ?? 0,
              (index) => ProductWidget(
                product: state?[index],
              ),
            ),
          ),
        ),
        onLoading: const Center(child: CircularProgressIndicator()),
        onEmpty: const Center(child: Text('No Products')),
        onError: (e) => Center(child: Text(e.toString())),
      ),
    );
  }
}
