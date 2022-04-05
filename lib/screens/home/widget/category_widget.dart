import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '/constraints/index.dart';
import '/data/model/category/category.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModel category;
  const CategoryWidget({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
            imageUrl: category.image,
          ),
        ),
        // const SizedBox(height: 3),
        SizedBox(
          width: 70,
          child: Text(
            category.name,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
