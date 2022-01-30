import 'package:flutter/material.dart';

import 'offer_carousel_item_widget.dart';

class OfferCarouselWidget extends StatefulWidget {
  final double height;
  const OfferCarouselWidget({Key? key, this.height = 200}) : super(key: key);

  @override
  State<OfferCarouselWidget> createState() => _OfferCarouselWidgetState();
}

class _OfferCarouselWidgetState extends State<OfferCarouselWidget>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController?.addListener(() {
      setState(() {
        // _selectedIndex = _controller.index;
      });
      // Do whatever you want based on the tab index
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: widget.height,
      child: Stack(clipBehavior: Clip.none, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabBarView(
            children: const [
              Center(child: OfferCarouselItemWidget()),
              Center(child: Text('B')),
              Center(child: Text('C')),
            ],
            controller: _tabController,
          ),
        ),
        Positioned(
          bottom: -30,
          left: 0,
          right: 0,
          child: Center(
            child: TabPageSelector(
              controller: _tabController,
              color: Colors.white,
              selectedColor: Colors.black,
            ),
          ),
        ),
      ]),
    );
  }
}
