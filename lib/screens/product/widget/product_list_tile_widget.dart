import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:green_tiger/controller/home_controller.dart';
import 'package:green_tiger/screens/product/product_details.dart';
import '../../../data/local/storage_utils.dart';
import '/constraints/index.dart';
import '/data/model/product/product.dart';
import 'package:cached_network_image/cached_network_image.dart'
    show CachedNetworkImageProvider;

class ProductListTileWidget extends StatelessWidget {
  final ProductModel? product;
  const ProductListTileWidget({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => HomeController.to.addNewWidget(
        ProductDetailsScreen(productModel: product),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: productBackgroundColor,
        ),
        margin: const EdgeInsets.only(bottom: 10),
        // padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              height: 130,
              width: 130,
              // padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: productBackgroundColor,
                image: product?.imageUrl != null
                    ? DecorationImage(
                        image: CachedNetworkImageProvider(
                          '${product?.imageUrl}',
                          headers: {"Cookie": "${StorageUtils.getCookie()}"},
                        ),
                        fit: BoxFit.cover)
                    : const DecorationImage(
                        image: AssetImage('assets/images/cycle.png'),
                        fit: BoxFit.cover,
                      ),
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
                    padding:
                        EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                    child: Text(
                      '-12%',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    "${product?.name}",
                    maxLines: 2,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "${product?.price ?? 0.0} BDT",
                  style: TextStyle(fontSize: 16, color: primaryColor),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    RatingBar(
                      initialRating: product?.rating ?? 0,
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
                      onRatingUpdate: (rating) {},
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '(${product?.ratingCount ?? 0})',
                      style: TextStyle(color: primaryColor),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
