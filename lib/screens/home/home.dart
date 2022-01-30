import 'package:flutter/material.dart';
import 'widget/product_widget.dart';
import '/constraints/index.dart';
import '/screens/main/widget/offer_carousel_builder_widget.dart';
import 'widget/category_widget.dart';
import 'widget/product_list_tile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Column(
        children: [
          Container(
            child: const OfferCarouselWidget(
              height: 180,
            ),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(8),
            ),
            // margin: const EdgeInsets.all(10),
          ),
          const SizedBox(height: 40),
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                productCategories.length,
                (index) => CategoryWidget(
                  category: productCategories[index],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Latest E-bikes',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: null,
                child: Text('Sell All'),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                products.length,
                (index) => ProductWidget(
                  product: products[index],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Electric Bicycle',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: null,
                child: Text('Sell All'),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                cycleProducts.length,
                (index) => ProductWidget(
                  product: cycleProducts[index],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            child: const OfferCarouselWidget(
              enableIndicator: false,
              height: 160,
            ),
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            // margin: const EdgeInsets.all(10),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Latest Arrivals',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: null,
                child: Text('Sell All'),
              )
            ],
          ),
          const SizedBox(height: 10),
          Column(
            children: List.generate(
              cycleProducts.length,
              (index) => ProductListTileWidget(
                product: cycleProducts[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
