import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/auth_controller.dart';
import 'package:green_tiger/controller/product/product_by_category_controller.dart';
import '../../product/product_by_category.dart';
import '/constraints/index.dart';
import '/data/model/category/category.dart';

class CategoryWidget extends GetView<AuthController> {
  final CategoryModel category;
  const CategoryWidget({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ProductByCategoryController.to.getProductByCategory(category);
        Get.to(() => const ProductByCategoryScreen());
      },
      child: Column(
        children: [
          Container(
            height: 95,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: productBackgroundColor,
            ),
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.all(20),
            child: CachedNetworkImage(
              httpHeaders: {'Cookie': "${controller.cookie}"},
              imageUrl: "${category.image}",
              errorWidget: (_, msg, __) {
                debugPrint(msg.toString());
                return const Icon(Icons.error);
              },
            ),
          ),
          const SizedBox(height: 6),
          SizedBox(
            width: 70,
            child: Text(
              "${category.name}",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
