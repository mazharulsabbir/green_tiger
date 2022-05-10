import 'package:flutter/material.dart';
import 'package:green_tiger/utils/index.dart';

class OfferCasual extends StatelessWidget {
  final String bannerImageLink;
  const OfferCasual({Key? key, required this.bannerImageLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
          image: DecorationImage(
            image: NetworkImage(
              bannerImageLink,
            ),
            fit: BoxFit.cover,
          )),
    );
  }
}
