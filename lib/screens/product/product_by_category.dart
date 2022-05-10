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
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: DropdownButtonFormField<CategoryModel>(
            isExpanded: true,
            items: [
              const DropdownMenuItem(
                child: Text('All'),
                value: CategoryModel(id: -1, name: 'All', image: "null"),
              ),
              ...List.generate(
                CategoryController.to.state?.length ?? 0,
                (index) => DropdownMenuItem(
                  child: Text(CategoryController.to.state?[index].name ?? ''),
                  value: CategoryController.to.state?[index],
                ),
              )
            ],
            onChanged: (value) {
              ProductByCategoryController.to.getProductByCategory(value);
            },
            value: ProductByCategoryController.to.category ??
                const CategoryModel(id: -1, name: 'All', image: "null"),
            decoration: const InputDecoration(border: InputBorder.none),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              PhosphorIcons.sort_ascending,
              color: Colors.black,
            ),
            onPressed: () async {
              final _sort = [
                'Popular',
                'Newest',
                'Customer Review',
                'Price Low to High',
                'Price High to Low'
              ];
              await showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                builder: (context) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      width: 80,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Sort By',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ...List.generate(
                      _sort.length,
                      (index) => ListTile(
                        title: Text(
                          _sort[index],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              );
            },
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
