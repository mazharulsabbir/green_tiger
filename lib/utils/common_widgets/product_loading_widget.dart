import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';

import '../../constraints/index.dart';

class ProductHorizontalShimmerLoadingWidget extends StatelessWidget {
  const ProductHorizontalShimmerLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Shimmer.fromColors(
                baseColor: primaryColor,
                highlightColor: Colors.yellow,
                child: Container(
                  width: 130.0,
                  height: 25.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                ),
              ),
              Shimmer.fromColors(
                baseColor: primaryColor,
                highlightColor: Colors.yellow,
                child: Container(
                  width: 50.0,
                  height: 25.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(10, (index) => const ShimmerItemWidget()),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

class ShimmerItemWidget extends StatelessWidget {
  const ShimmerItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      //   color: productBackgroundColor,
      // ),
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: productBackgroundColor,
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: SizedBox(
                      width: 160.0,
                      height: 140.0,
                      child: Shimmer.fromColors(
                        baseColor: primaryColor,
                        highlightColor: Colors.yellow,
                        child: Image.asset(eBikeCategoryImage),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Shimmer.fromColors(
                baseColor: primaryColor,
                highlightColor: Colors.yellow,
                child: Container(
                  width: 70.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Shimmer.fromColors(
                baseColor: primaryColor,
                highlightColor: Colors.yellow,
                child: Container(
                  width: 20.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Shimmer.fromColors(
            baseColor: primaryColor,
            highlightColor: Colors.yellow,
            child: Container(
              width: 120.0,
              height: 15.0,
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
              width: 50.0,
              height: 10.0,
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
