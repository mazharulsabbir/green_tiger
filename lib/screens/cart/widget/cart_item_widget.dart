import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:green_tiger/constraints/index.dart';
import 'package:green_tiger/data/model/cart/cart.dart';

class CartItemWidget extends StatelessWidget {
  final CartModel cart;
  const CartItemWidget({Key? key, required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(6),
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
              "${cart.imageUrl}",
              // fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${cart.name}",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                        ),
                      ),
                      const Icon(PhosphorIcons.trash)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${cart.price}",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 25,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.3),
                              ),
                            ),
                            child: const Icon(
                              PhosphorIcons.minus,
                              size: 16,
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 26,
                            decoration: BoxDecoration(color: primaryColor),
                            child: Center(
                              child: Text(
                                "${cart.quantity}",
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            width: 30,
                            height: 25,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.3),
                              ),
                            ),
                            child: const Icon(
                              PhosphorIcons.plus,
                              size: 16,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
