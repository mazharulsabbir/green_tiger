import 'package:flutter/material.dart';
import '/constraints/index.dart';
import '/screens/home/widget/offer_carousel_builder_widget.dart';
import 'widget/category_widget.dart';

class ProductCatelogScreen extends StatelessWidget {
  const ProductCatelogScreen({Key? key}) : super(key: key);

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
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            // margin: const EdgeInsets.all(10),
          ),
          const SizedBox(height: 20),
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
                10,
                (index) => Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueAccent,
                  ),
                  margin: const EdgeInsets.only(right: 10),
                  child: Center(
                    child: Text(index.toString()),
                  ),
                ),
              ),
            ),
          ),
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
                10,
                (index) => Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueAccent,
                  ),
                  margin: const EdgeInsets.only(right: 10),
                  child: Center(
                    child: Text(index.toString()),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            child: const OfferCarouselWidget(),
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            // margin: const EdgeInsets.all(10),
          ),
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
          Column(
            children: List.generate(
              20,
              (index) => const ListTile(
                title: Text('Hello'),
                subtitle: Text('Hello'),
                leading: Icon(Icons.bike_scooter),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
