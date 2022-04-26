import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_tiger/controller/product/product_by_category_controller.dart';

class FilterProductWidget extends StatefulWidget {
  const FilterProductWidget({Key? key}) : super(key: key);

  @override
  State<FilterProductWidget> createState() => _FilterProductWidgetState();
}

class _FilterProductWidgetState extends State<FilterProductWidget> {
  double start = 30.0;
  double end = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Price Range',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '\$78',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$143',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            RangeSlider(
              values: RangeValues(start, end),
              labels: RangeLabels(start.toString(), end.toString()),
              onChanged: (value) {
                setState(() {
                  start = value.start;
                  end = value.end;
                });
              },
              min: 10.0,
              max: 80.0,
            ),
            const SizedBox(height: 20),
            const Text(
              'Colors',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: const [
                Chip(
                  label: Text('Red'),
                  backgroundColor: Colors.red,
                ),
                Chip(
                  label: Text('Green'),
                  backgroundColor: Colors.green,
                ),
                Chip(
                  label: Text('Blue'),
                  backgroundColor: Colors.blue,
                ),
                Chip(
                  label: Text('Yellow'),
                  backgroundColor: Colors.yellow,
                ),
                Chip(
                  label: Text('Purple'),
                  backgroundColor: Colors.purple,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Category',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 8,
              children: List.generate(
                ProductByCategoryController.to.state?.length ?? 0,
                (index) => Chip(
                  label: Text(
                    ProductByCategoryController.to.state?[index].name ?? '-',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Get.back(),
                    child: const Text('Cancel'),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Apply'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
