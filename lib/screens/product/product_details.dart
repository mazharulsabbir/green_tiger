import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:green_tiger/constraints/colors.dart';
import 'package:green_tiger/constraints/images.dart';
import 'package:green_tiger/controller/cart_controller.dart';
import 'package:green_tiger/data/model/alternative_product/alternative_product.dart';
import 'package:green_tiger/data/model/cart/cart.dart';
import 'package:green_tiger/data/model/product/product.dart';
import 'package:green_tiger/data/model/product_details/more_time.dart';
import 'package:green_tiger/data/remote/api_service.dart';
import 'package:green_tiger/screens/product/widget/product_widget.dart';
import 'package:green_tiger/screens/write_review/write_review_screen.dart';
import 'package:green_tiger/utils/common_widgets/common_gap.dart';

import '../../controller/home_controller.dart';
import '../../data/local/storage_utils.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel? productModel;
  ProductDetailsScreen({
    Key? key,
    required this.productModel,
  }) : super(key: key);
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
          title: Text(
            '${productModel?.name}',
            style: const TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => HomeController.to.removeLastWidget(),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: Colors.black,
              ),
            )
          ],
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              productModel?.productTemplateImages != null
                  ? SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          productModel?.productTemplateImages?.length ?? 0,
                          (index) => _ProductImageWidget(
                            imagePath: productModel
                                ?.productTemplateImages?[index].imageUrl,
                          ),
                        ),
                      ),
                    )
                  : CachedNetworkImage(
                      imageUrl: "${productModel?.imageUrl}",
                      fit: BoxFit.cover,
                    ),
              const Gap(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          "${productModel?.price ?? 0.0} BDT",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Gap(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: _StarReview(
                        rating: productModel?.rating ?? 0.0,
                        reviewNumber: productModel?.ratingCount?.toInt() ?? 0,
                      ),
                    ),
                    const Gap(),
                    Text(productModel?.saleDescription ?? 'No description'),
                    const Gap(
                      times: 2,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Color',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const Gap(),
                    Row(
                      children: colorDotsColors
                          .map((e) => _ColorDots(color: e))
                          .toList(),
                    ),
                    const Gap(),
                    ...List.generate(
                      productModel?.itemDetails?.length ?? 0,
                      (index) => ExpansionTile(
                        title: Text(
                          productModel?.itemDetails?[index].tabName ?? '',
                        ),
                        children: [
                          Html(
                            data: productModel?.itemDetails?[index].tabContent,
                            onImageError: (exception, stackTrace) {
                              // FirebaseCrashlytics.instance
                              //     .recordError(exception, stackTrace);
                              debugPrint("Image loading error. $exception");
                              debugPrint("Image loading error. $exception");
                              debugPrint("Image loading error. $exception");
                              debugPrint("Image loading error. $exception");
                            },
                            customImageRenders: {
                              networkSourceMatcher(): networkImageRender(
                                headers: {
                                  "Cookie": "${StorageUtils.getCookie()}"
                                },
                                altWidget: (alt) => Text(alt ?? ""),
                                loadingWidget: () =>
                                    const LinearProgressIndicator(),
                              ),
                              (attr, _) =>
                                      attr["src"] != null &&
                                      !attr["src"]!.startsWith("http"):
                                  networkImageRender(headers: {
                                "Cookie": "${StorageUtils.getCookie()}"
                              }, mapUrl: (url) => "$baseUrl$url"),
                            },
                          )
                        ],
                      ),
                    ),
                    const Gap(
                      times: 2,
                    ),
                    Center(
                      child: _AddToCButton(productModel: productModel),
                    ),
                    const Gap(),
                    Visibility(
                      visible: productModel?.alternativeProducts != null,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: Get.width * 0.3,
                            ),
                            child: const Divider(
                              thickness: 5,
                              endIndent: 20,
                              color: Colors.black,
                              height: 20,
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
                                productModel?.alternativeProducts?.length ?? 0,
                                (index) => ProductWidget(
                                  product: getProductModel(productModel!
                                      .alternativeProducts![index]),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  ProductModel getProductModel(AlternativeProducts alternativeProducts) =>
      ProductModel(
        id: alternativeProducts.id,
        name: alternativeProducts.name,
        price: alternativeProducts.listPrice,
        discount: alternativeProducts.discount,
        imageUrl: alternativeProducts.imageUrl,
        rating: alternativeProducts.ratingAvg,
        ratingCount: alternativeProducts.ratingCount,
        alternativeProducts: null,
        isFav: false,
      );
}

class _ProductImageWidget extends StatelessWidget {
  final String? imagePath;
  const _ProductImageWidget({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.4,
      width: Get.width * 0.7,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(
          image: CachedNetworkImageProvider(
            imagePath ?? '',
            headers: {"Cookie": "${StorageUtils.getCookie()}"},
            errorListener: () => const AssetImage(eBikeCategoryImage),
          ),
        ),
      ),
    );
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
              color: Colors.yellow,
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
          CartController.to.addAItem(
            CartModel(
              name: productModel?.name,
              description: productModel?.description,
              price: productModel?.price?.toString(),
              imageUrl: productModel?.imageUrl,
              quantity: 1.toString(),
              total: productModel?.price?.toString(),
            ),
          );
        },
        child: const Text(
          'ADD TO CART',
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
