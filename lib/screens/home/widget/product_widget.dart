import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '/constraints/index.dart';
import '/data/model/product/product.dart';

class ProductWidget extends StatelessWidget {
  final ProductModel product;
  const ProductWidget({Key? key, required this.product}) : super(key: key);

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
                    child: Image.asset(
                      "${product.imageUrl}",
                      height: 140,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  right: 0,
                  child: FloatingActionButton.small(
                    heroTag: "product_${Random().nextInt(100)}",
                    elevation: 1,
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.white,
                    onPressed: null,
                    child: Icon(
                      product.isFav ?? false
                          ? Icons.favorite
                          : Icons.favorite_border_sharp,
                      color: product.isFav ?? false
                          ? Colors.redAccent
                          : Colors.grey,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 4.0,
                          horizontal: 8.0,
                        ),
                        child: Text(
                          '-12%',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              RatingBar(
                initialRating: product.rating ?? 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                maxRating: 5,
                minRating: 0,
                itemSize: 12,
                ignoreGestures: true,
                unratedColor: primaryColor,
                ratingWidget: RatingWidget(
                  full: Icon(
                    PhosphorIcons.star_fill,
                    color: primaryColor,
                  ),
                  half: Icon(
                    PhosphorIcons.star_half,
                    color: primaryColor,
                  ),
                  empty: Icon(
                    PhosphorIcons.star,
                    color: primaryColor,
                  ),
                ),
                itemPadding: const EdgeInsets.only(right: 2.0),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              const SizedBox(width: 4),
              Text(
                '(${product.ratingCount})',
                style: TextStyle(color: primaryColor),
              ),
            ],
          ),
          Text(
            "${product.name}",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            "${product.price} BDT",
            style: TextStyle(fontSize: 16, color: primaryColor),
          ),
        ],
      ),
    );
  }
}
