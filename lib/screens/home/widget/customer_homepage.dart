import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/category_controller.dart';
import 'package:green_tiger/controller/product_controller.dart';
import '../../../controller/product_by_category_controller.dart';
import '/data/local/fake_data_repository.dart';
import 'product_widget.dart';
import '/screens/main/widget/offer_carousel_builder_widget.dart';
import 'category_widget.dart';
import 'product_list_tile_widget.dart';

class CustomerHomeScreen extends GetView<CategoryController> {
  const CustomerHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Column(
        children: [
          Container(
            child: const OfferCarouselWidget(
              height: 180,
            ),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(8),
            ),
            // margin: const EdgeInsets.all(10),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Category',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: null,
                child: Text('Sell All'),
              )
            ],
          ),
          controller.obx(
              (state) => SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: state != null
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              state.length,
                              (index) => CategoryWidget(
                                category: state[index],
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ),
              onLoading: const SizedBox(),
              onError: (e) => const SizedBox()),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Latest E-bikes',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: null,
                child: Text('Sell All'),
              )
            ],
          ),
          _ProductByCategoryListWidget(categoryId: 10.toString()),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Electric Bicycle',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: null,
                child: Text('Sell All'),
              )
            ],
          ),
          _ProductByCategoryListWidget(categoryId: 16.toString()),
          const SizedBox(height: 30),
          Container(
            child: const OfferCarouselWidget(
              enableIndicator: false,
              height: 160,
            ),
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            // margin: const EdgeInsets.all(10),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Latest Arrivals',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: null,
                child: Text('Sell All'),
              )
            ],
          ),
          const SizedBox(height: 10),
          const _ProductListWidget(),
        ],
      ),
    );
  }
}

class _ProductListWidget extends GetView<ProductController> {
  const _ProductListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) => ListView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: state?.length,
        itemBuilder: ((context, index) => ProductListTileWidget(
              product: state?[index],
            )),
      ),
      onLoading: const Center(child: CircularProgressIndicator()),
      onEmpty: const Center(child: Text('No Products')),
      onError: (e) => Center(child: Text(e.toString())),
    );
  }
}

class _ProductByCategoryListWidget
    extends GetView<ProductByCategoryController> {
  final String? categoryId;
  const _ProductByCategoryListWidget({
    Key? key,
    required this.categoryId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
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
    );
  }
}
