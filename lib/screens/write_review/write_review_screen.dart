import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:green_tiger/common_widgets/common_gap.dart';
import 'package:badges/badges.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/cart_controller.dart';

class WriteReviewScreen extends StatelessWidget {
  WriteReviewScreen({Key? key}) : super(key: key);
  final TextEditingController reviewController = TextEditingController();

  final OutlineInputBorder defaultEditingBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        10,
      ),
    ),
    borderSide: BorderSide(
      width: 2,
      color: Colors.grey,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search product or dealers',
          ),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.search,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GetX<CartController>(
              builder: (controller) {
                if (controller.cartItems.isEmpty) {
                  return const Icon(
                    PhosphorIcons.shopping_cart,
                    color: Colors.black,
                  );
                } else {
                  return Badge(
                    badgeContent: Text(controller.cartItems.length.toString()),
                    padding: const EdgeInsets.all(4),
                    position: BadgePosition.topEnd(top: -5, end: -5),
                    child: const Icon(
                      PhosphorIcons.shopping_cart,
                      color: Colors.black,
                    ),
                  );
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Badge(
              // badgeContent: const Text('3'),
              padding: const EdgeInsets.all(4),
              position: BadgePosition.topEnd(top: 0, end: 0),
              child: const Icon(
                PhosphorIcons.bell,
                color: Colors.black,
              ),
            ),
          ),
          // IconButton(
          //   icon: const Icon(PhosphorIcons.sign_out, color: Colors.black),
          //   onPressed: () => _authController.setUserLoggedInStatus(false),
          // ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.arrow_back_ios),
              title: Text(
                'Write Review',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(),
                  const Text(
                    'Please write overall level of satisfication with your shipping / Delivery Service',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Gap(),
                  Row(
                    children: [
                      RatingBar(
                        initialRating: 3,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        maxRating: 5,
                        minRating: 0,
                        itemSize: 35,
                        ignoreGestures: true,
                        unratedColor: Colors.blue,
                        ratingWidget: RatingWidget(
                          full: const Icon(
                            PhosphorIcons.star_fill,
                            color: Colors.yellow,
                          ),
                          half: const Icon(
                            PhosphorIcons.star_half,
                            color: Colors.yellow,
                          ),
                          empty: Icon(
                            PhosphorIcons.star_fill,
                            color: Colors.grey.shade200,
                          ),
                        ),
                        itemPadding: const EdgeInsets.only(right: 2.0),
                        onRatingUpdate: (rating) {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '4/5',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const Gap(
                    times: 2,
                  ),
                  const Text(
                    'Write your review',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Gap(),
                  TextField(
                    controller: reviewController,
                    maxLines: 5,
                    decoration: InputDecoration(
                        hintText: 'Write your review here',
                        hintStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: defaultEditingBorder,
                        focusedBorder: defaultEditingBorder),
                  ),
                  const Gap(),
                  const Text(
                    'Add Photo',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Gap(),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          5,
                        ),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.grey,
                    ),
                  ),
                  const Gap(
                    times: 2,
                  ),
                  _SubmiteButton(
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SubmiteButton extends StatelessWidget {
  final VoidCallback onPressed;
  const _SubmiteButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: Get.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.lightGreen,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
        onPressed: onPressed,
        child: const Text(
          'Submit',
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
