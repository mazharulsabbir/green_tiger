import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '/constraints/index.dart';
import '/data/model/product/product.dart';

class ProductListTileWidget extends StatelessWidget {
  final ProductModel product;
  const ProductListTileWidget({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      //   color: productBackgroundColor,
      // ),
      margin: const EdgeInsets.only(bottom: 10),
      // padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: productBackgroundColor,
            ),
            child: Image.asset(
              "${product.imageUrl}",
              // fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.black,
                ),
                child: const Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                  child: Text(
                    '-12%',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )),
              ),
              Text(
                "${product.name}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "${product.price} BDT",
                style: TextStyle(fontSize: 16, color: primaryColor),
              ),
              const SizedBox(height: 4),
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
                    unratedColor: primaryColor,
                    ignoreGestures: true,
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
                  Text('(${product.ratingCount})'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
