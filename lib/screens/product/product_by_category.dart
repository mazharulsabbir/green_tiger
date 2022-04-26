import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:green_tiger/data/model/category/category.dart';
import 'package:green_tiger/screens/product/widget/filter_product_widget.dart';

import '../../controller/product/category_controller.dart';
import '../../controller/product/product_by_category_controller.dart';
import 'widget/product_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductByCategoryScreen extends GetView<ProductByCategoryController> {
  const ProductByCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: DropdownButtonFormField<CategoryModel>(
          isExpanded: true,
          items: List.generate(
            CategoryController.to.state?.length ?? 0,
            (index) => DropdownMenuItem(
              child: Text(CategoryController.to.state?[index].name ?? ''),
              value: CategoryController.to.state?[index],
            ),
          ),
          onChanged: (value) {
            ProductByCategoryController.to.getProductByCategory(value!);
          },
          value: ProductByCategoryController.to.category,
          decoration: const InputDecoration(border: InputBorder.none),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              PhosphorIcons.sort_ascending,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              PhosphorIcons.funnel,
              color: Colors.black,
            ),
            onPressed: () {
              Get.to(() => const FilterProductWidget());
            },
          ),
        ],
      ),
      body: controller.obx(
        (state) => SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
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
