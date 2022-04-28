import 'package:flutter/material.dart';
import 'package:green_tiger/data/model/order/order_card_model.dart';
import 'package:green_tiger/utils/common_widgets/common_gap.dart';
import 'package:green_tiger/utils/my_tabbar/my_tabbar.dart';

const _staticDunnyOrderMode = OrderCardModel(
    trackingId: 'S88457',
    quantity: 2,
    orderId: 'JR84688',
    status: 'Delivered',
    total: 98,
    date: '30-01-2023');

class VendorHomepageScreen extends StatelessWidget {
  VendorHomepageScreen({Key? key}) : super(key: key);

  final List<String> title = ['Delivered', 'Processing', 'Cancelled'];
  final List<Widget> containers = [
    const _OrderListWidget(),
    const Center(
      child: Text('Tabbar Conatainers'),
    ),
    const Center(
      child: Text('Tabbar Conatainers'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 0.0,
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'OverView',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 20,
                      child: const Icon(Icons.add, color: Colors.white),
                      backgroundColor: Colors.green.shade400,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        MyTabbBar(titles: title, containers: containers),
      ],
    );
  }
}

class _OrderListWidget extends StatelessWidget {
  const _OrderListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.separated(
        itemBuilder: (context, index) => const _CustomCard(
          orderCardModel: _staticDunnyOrderMode,
        ),
        itemCount: 2,
        shrinkWrap: true,
        separatorBuilder: (context, index) => const Gap(),
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  final OrderCardModel orderCardModel;
  const _CustomCard({Key? key, required this.orderCardModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.white,
          blurRadius: 2.0,
          spreadRadius: 0.0,
          offset: Offset(2.0, 2.0), // shadow direction: bottom right
        )
      ]),
      child: Column(
        children: [
          MyCustomRow(
            widgets: [
              Text(
                'Order#${orderCardModel.orderId}',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                orderCardModel.date,
                style: const TextStyle(color: Colors.grey),
              )
            ],
          ),
          const Gap(),
          Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                  text: 'Tracking  ',
                  style: const TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                        text: orderCardModel.trackingId,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black))
                  ]),
            ),
          ),
          const Gap(
            times: 2,
          ),
          MyCustomRow(
            widgets: [
              RichText(
                text: TextSpan(
                    text: 'Quantity: ',
                    style: const TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                          text: orderCardModel.quantity.toString(),
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold))
                    ]),
              ),
              RichText(
                text: TextSpan(
                    text: 'Total: ',
                    style: const TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                          text: orderCardModel.total.toString(),
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold))
                    ]),
              ),
            ],
          ),
          const Gap(),
          MyCustomRow(
            widgets: [
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      15,
                    ),
                  ),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
                  child: Text(
                    'Details',
                  ),
                ),
              ),
              const Text(
                'Delivered',
                style: TextStyle(color: Colors.green),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MyCustomRow extends Row {
  final List<Widget> widgets;
  final Key? defaultKey;
  MyCustomRow({this.defaultKey, required this.widgets})
      : super(
            key: defaultKey,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: widgets);
}
