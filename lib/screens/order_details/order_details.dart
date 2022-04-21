import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/constraints/images.dart';
import 'package:green_tiger/data/model/cart/cart.dart';
import 'package:green_tiger/data/model/order/oshopping_detials_model.dart';
import 'package:green_tiger/screens/cart/widget/cart_item_widget.dart';
import 'package:green_tiger/utils/common_widgets/common_gap.dart';
import 'package:green_tiger/utils/common_widgets/common_search_appbar.dart';
import 'package:green_tiger/utils/common_widgets/my_stepper/my_timeline.dart';
part 'widgets/stepper.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SearchProductAppBar(
            elevation: 0,
          ),
          Card(
            color: Colors.white,
            child: Container(
              height: 60,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: Row(
                children: const [
                  Icon(
                    (Icons.arrow_back_ios),
                  ),
                  Text(
                    'Order details',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          const _OrderTimeLine()
        ],
      ),
    );
  }
}

class _OrderTimeLine extends StatelessWidget {
  const _OrderTimeLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyTimeLine(
      timelines: timelInes,
      currentIndex: 0,
    );
  }

  final List<MyTimeLineModel> timelInes = const [
    MyTimeLineModel(title: 'Confirm', content: _BodyPage()),
    MyTimeLineModel(title: 'Proccessing', content: SizedBox()),
    MyTimeLineModel(title: 'Shipped', content: SizedBox()),
    MyTimeLineModel(title: 'Delivered', content: SizedBox())
  ];
}

class _BodyPage extends StatelessWidget {
  const _BodyPage({Key? key}) : super(key: key);
  ShoppingDetialsModel get demoMode => const ShoppingDetialsModel(
      address: 'Dhaka2',
      date: 'June 20, 2011',
      number: '01303242423',
      shipping: 'Shelly mall');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List<Widget>.generate(
            2,
            (index) => CartItemWidget(
                  cart: CartModel(
                      name: 'Book',
                      description: 'This book is not availble now',
                      imageUrl: sparePartsCategoryImage,
                      price: '30.0',
                      quantity: '4',
                      total: '40'),
                )),
        const Gap(),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Shipping Details',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Gap(),
        _ShopingDetailsCard(
          shoppingDetialsModel: demoMode,
        ),
        const Gap(
          times: 2,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            border: Border.all(
              color: Colors.grey.shade400,
              width: 2,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Items',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Text(
                      '\$598.80',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Text(
                      '\$40',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Gap(
          times: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Total',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '\$766.88',
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
            )
          ],
        )
      ],
    );
  }
}

class _ShopingDetailsCard extends StatefulWidget {
  final ShoppingDetialsModel shoppingDetialsModel;
  const _ShopingDetailsCard({Key? key, required this.shoppingDetialsModel})
      : super(key: key);

  @override
  State<_ShopingDetailsCard> createState() => _ShopingDetailsCardState();
}

class _ShopingDetailsCardState extends State<_ShopingDetailsCard> {
  List<Map<String, dynamic>> data = [];
  @override
  void initState() {
    data = [
      {'Date': widget.shoppingDetialsModel.date},
      {'Shipping': widget.shoppingDetialsModel.shipping},
      {'No.': widget.shoppingDetialsModel.number},
      {'Address': widget.shoppingDetialsModel.address}
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            5,
          ),
        ),
        border: Border.all(
          color: Colors.grey.shade400,
          width: 2,
        ),
      ),
      padding: const EdgeInsets.all(
        10,
      ),
      child: Column(
          children: data
              .map((e) => Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          e.keys.first,
                          style: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: Get.width * 0.4,
                          ),
                          child: Text(
                            e.values.first,
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
              .toList()),
    );
  }
}
