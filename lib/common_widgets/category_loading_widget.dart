import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';

import '../constraints/index.dart';

class CategoryHorizontalShimmerLoadingWidget extends StatelessWidget {
  const CategoryHorizontalShimmerLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: 10,
        itemBuilder: ((context, index) => const ShimmerItemWidget()),
      ),
    );
  }
}

class ShimmerItemWidget extends StatelessWidget {
  const ShimmerItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          Shimmer.fromColors(
            baseColor: primaryColor,
            highlightColor: Colors.yellow,
            child: Container(
              height: 85,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Shimmer.fromColors(
            baseColor: primaryColor,
            highlightColor: Colors.yellow,
            child: Container(
              width: 60.0,
              height: 15.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
