import 'package:flutter/material.dart';

class OfferCarouselWidget extends StatefulWidget {
  const OfferCarouselWidget({Key? key}) : super(key: key);

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
      height: 200,
      child: Stack(clipBehavior: Clip.none, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabBarView(
            children: const [
              Center(child: Text('A')),
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
