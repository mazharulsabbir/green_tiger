import 'package:flutter/material.dart';
import 'package:green_tiger/utils/common_widgets/common_search_appbar.dart';
import 'package:green_tiger/utils/my_tabbar/my_tabbar.dart';

class VendorHomepageScreen extends StatelessWidget {
  VendorHomepageScreen({Key? key}) : super(key: key);

  final List<String> title = ['Delivered', 'Processing', 'Cancelled'];
  final List<Widget> containers = List.filled(
      3,
      const Center(
        child: Text('Tabbar Conatainers'),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchProductAppBar(
        elevation: 3,
      ),
      body: Column(
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
      ),
    );
  }
}
