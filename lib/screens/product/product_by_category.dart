import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/product/product_by_category_controller.dart';
import 'widget/product_list_tile_widget.dart';

class ProductByCategoryScreen extends GetView<ProductByCategoryController> {
  const ProductByCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${controller.category?.name}'),
      ),
      body: controller.obx(
        (state) => ListView.builder(
          itemCount: state?.length,
          itemBuilder: (context, index) => ProductListTileWidget(
            product: state?[index],
          ),
        ),
        onLoading: const Center(child: CircularProgressIndicator()),
        onEmpty: const Center(child: Text('No Products')),
        onError: (e) => Center(child: Text(e.toString())),
      ),
    );
  }
}
