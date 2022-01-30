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
          child: Image.asset(
            category.image,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          category.name,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
