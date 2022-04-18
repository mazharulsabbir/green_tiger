import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import '../../utils/common_widgets/common_gap.dart';
import 'package:green_tiger/constraints/colors.dart';
import 'package:green_tiger/constraints/images.dart';
import 'package:green_tiger/controller/cart_controller.dart';
import 'package:green_tiger/data/model/cart/cart.dart';
import 'package:green_tiger/data/model/product/product.dart';
import 'package:green_tiger/data/model/product_details/more_time.dart';
import 'dart:math' as math;
import 'package:green_tiger/screens/home/widget/product_widget.dart';
import 'package:green_tiger/screens/write_review/write_review_screen.dart';
import 'package:green_tiger/utils/common_widgets/common_gap.dart';

String _stataticProductDetails =
    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.';

class ProductDetialsScreen extends StatelessWidget {
  final ProductModel? productModel;
  ProductDetialsScreen({Key? key, required this.productModel})
      : super(key: key);
  final List<Color> colorDotsColors = const [
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.blueAccent
  ];
  final List<MoreTileModel> moreTiles = [
    const MoreTileModel(title: 'Item details', navTo: null),
    const MoreTileModel(title: 'Shipping info', navTo: null),
    MoreTileModel(title: 'Reviews', navTo: WriteReviewScreen()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: const Text(
            'GT-Vive',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.share,
              color: Colors.black,
            )
          ],
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      3,
                      (index) => _ProductImageWidget(
                            imagePath: productModel?.imageUrl,
                          )),
                ),
              ),
              const Gap(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          productModel?.name ?? 'Untitled',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          (productModel?.price).toString(),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Gap(),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: _StarReview(
                        rating: 3.5,
                        reviewNumber: 10,
                      ),
                    ),
                    const Gap(),
                    Text(_stataticProductDetails),
                    const Gap(
                      times: 2,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Color',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    const Gap(),
                    Row(
                      children: colorDotsColors
                          .map((e) => _ColorDots(color: e))
                          .toList(),
                    ),
                    const Gap(),
                    Column(
                      children: ListTile.divideTiles(
                          context: context,
                          tiles: Iterable.generate(moreTiles.length, (index) {
                            return ExpansionTile(
                              title: Text(moreTiles[index].title),
                              // trailing: Transform.rotate(
                              //   angle: math.pi,
                              //   child: const Icon(Icons.arrow_back_ios),
                              // ),
                              onExpansionChanged: (expanded) {
                                if (expanded) {
                                  // todo: change arrow icon to down arrow
                                }
                              },
                              children: List.generate(
                                3,
                                (index) => ListTile(
                                  onTap: () {
                                    Get.to(() => WriteReviewScreen());
                                  },
                                  title: Text('Item $index'),
                                ),
                              ),
                            );
                          })).toList()
                        ..insert(moreTiles.length, const Divider())
                        ..insert(0, const Divider()),
                    ),
                    const Gap(
                      times: 2,
                    ),
                    _AddToCButton(
                      productModel: productModel,
                    ),
                    const Gap(),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Get.width * 0.3),
                      child: const Divider(
                        thickness: 5, // thickness of the line
                        endIndent:
                            20, // empty space to the trailing edge of the divider.
                        color: Colors
                            .black, // The color to use when painting the line.
                        height: 20, // The divider's height extent.
                      ),
                    ),
                    const Gap(
                      times: 2,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'You can also like',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    const Gap(),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            3,
                            (index) => ProductWidget(
                                  product: productModel,
                                )),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class _ProductImageWidget extends StatelessWidget {
  final String? imagePath;
  const _ProductImageWidget({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height * 0.5,
        width: Get.width * 0.8,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.grey,
            image: imagePath != null
                ? DecorationImage(image: NetworkImage(imagePath!))
                : const DecorationImage(
                    image: AssetImage(eBikeCategoryImage))));
  }
}

class _StarReview extends StatelessWidget {
  final double rating;
  final int reviewNumber;
  const _StarReview(
      {Key? key, required this.rating, required this.reviewNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar(
          initialRating: rating,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          maxRating: 5,
          minRating: 0,
          itemSize: 12,
          ignoreGestures: true,
          unratedColor: primaryColor,
          ratingWidget: RatingWidget(
            full: const Icon(
              PhosphorIcons.star_fill,
              color: Colors.yellow,
            ),
            half: const Icon(
              PhosphorIcons.star_half,
              color: Colors.yellow,
            ),
            empty: const Icon(
              PhosphorIcons.star,
              color: Colors.white,
            ),
          ),
          itemPadding: const EdgeInsets.only(right: 2.0),
          onRatingUpdate: (rating) {},
        ),
        Text(
          '($reviewNumber)',
          style: const TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}

class _ColorDots extends StatelessWidget {
  final Color color;
  const _ColorDots({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}

class _AddToCButton extends StatelessWidget {
  final ProductModel? productModel;

  const _AddToCButton({Key? key, required this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: Get.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
        onPressed: () {
          CartController.to.addAItem(CartModel(
              name: productModel?.name,
              description: _stataticProductDetails,
              price: productModel?.price?.toString(),
              imageUrl: productModel?.imageUrl,
              quantity: 1.toString(),
              total: productModel?.price?.toString()));
        },
        child: const Text(
          'ADD TO CART',
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
