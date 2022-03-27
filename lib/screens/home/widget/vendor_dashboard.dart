import 'package:flutter/material.dart';

import '../../../utils/tabs/tab_indicator.dart';

class VendorHomepageScreen extends StatefulWidget {
  const VendorHomepageScreen({Key? key}) : super(key: key);

  @override
  State<VendorHomepageScreen> createState() => _VendorHomepageScreenState();
}

class _VendorHomepageScreenState extends State<VendorHomepageScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Category',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: null,
              child: Text('Sell All'),
            )
          ],
        ),
        TabBar(
          tabs: const [
            Tab(text: 'Food'),
            Tab(text: 'Drink'),
          ],
          controller: _tabController,
          indicator: CustomTabIndicator(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: TabBarView(
            children: [
              Container(color: Colors.amber, child: const Text('Food')),
              const Text('Drink'),
            ],
            controller: _tabController,
          ),
        )
      ],
    );
  }
}
