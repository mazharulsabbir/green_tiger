import 'package:flutter/material.dart';
import '/constraints/index.dart';
import '/data/model/product/product.dart';

class ProductListTileWidget extends StatelessWidget {
  final ProductModel product;
  const ProductListTileWidget({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: productBackgroundColor,
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(10),
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
                      padding: EdgeInsets.symmetric(vertical:4.0,horizontal: 8.0),
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
              const Text('Rating (10)'),
            ],
          )
        ],
      ),
    );
  }
}
