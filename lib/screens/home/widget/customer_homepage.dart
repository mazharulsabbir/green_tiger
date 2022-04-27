import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/product/category_controller.dart';
import 'package:green_tiger/controller/product/product_controller.dart';
import 'package:green_tiger/data/model/product/product.dart';
import 'package:green_tiger/data/repository/product_repo.dart';
import '../../../utils/common_widgets/product_loading_widget.dart';
import '/utils/index.dart';
import '../../product/widget/product_widget.dart';
import '/screens/main/widget/offer_carousel_builder_widget.dart';
import '../../product/widget/category_widget.dart';
import '../../product/widget/product_list_tile_widget.dart';

class CustomerHomeScreen extends GetView<CategoryController> {
  const CustomerHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: controller.refreshHome,
      child: SingleChildScrollView(
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
              (state) => Column(
                children: [
                  SingleChildScrollView(
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
                  const SizedBox(height: 30),
                  if (state != null)
                    ...List.generate(
                      state.length,
                      (index) => Column(
                        children: [
                          _ProductByCategoryListWidget(
                            categoryId: state[index].id,
                            categoryName: 'Latest ${state[index].name}',
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              onLoading: const SingleChildScrollView(
                child: CategoryHorizontalShimmerLoadingWidget(),
              ),
              onError: (e) => Center(
                child: Text('$e'),
              ),
            ),
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
        itemBuilder: (context, index) => ProductListTileWidget(
          product: state?[index],
        ),
      ),
      onLoading: const Center(child: CircularProgressIndicator()),
      onEmpty: const Center(child: Text('No Products')),
      onError: (e) => Center(child: Text(e.toString())),
    );
  }
}

class _ProductByCategoryListWidget extends StatelessWidget {
  final int? categoryId;
  final String? categoryName;
  const _ProductByCategoryListWidget({
    Key? key,
    required this.categoryId,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ProductRepository(Get.find()).productsByCategory(categoryId),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          final state = snapshot.data as List<ProductModel>?;
          if (state?.isEmpty??true) return const SizedBox();

          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$categoryName",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const TextButton(
                    onPressed: null,
                    child: Text('Sell All'),
                  )
                ],
              ),
              SingleChildScrollView(
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
              const SizedBox(height: 30),
            ],
          );
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const ProductHorizontalShimmerLoadingWidget();
        }

        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        } else {
          return const SizedBox();
        }
      }),
    );
  }
}
