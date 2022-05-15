import 'package:flutter/material.dart';

class MyTabbar extends StatefulWidget {
  const MyTabbar(
      {Key? key, required this.tabTileItems, required this.containers})
      : assert(tabTileItems.length == containers.length),
        super(key: key);

  final List<String> tabTileItems;
  final List<Widget> containers;

  @override
  State<MyTabbar> createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> {
  int _currentIndex = 0;
  Widget _buildIndicator(String _indicatorText, bool isActive) {
    late Widget child;
    child = Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Text(
        _indicatorText,
        style: TextStyle(color: isActive ? Colors.white : Colors.black),
      ),
    );
    if (isActive) {
      child = DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
        child: child,
      );
    }
    return child;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  widget.tabTileItems.length,
                  (index) => _buildIndicator(
                      widget.tabTileItems[index], index == _currentIndex)),
            ),
          ),
        ),
        Expanded(
          child: PageView(
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: widget.containers,
          ),
        )
      ],
    );
  }
}
