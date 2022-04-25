import 'package:flutter/material.dart';
import 'package:get/get.dart';
part 'my_tabbar_tile.dart';

class MyTabbBar extends StatefulWidget {
  final List<String> titles;
  final List<Widget> containers;
  final int currentIndex;
  const MyTabbBar(
      {Key? key,
      required this.titles,
      required this.containers,
      this.currentIndex = 0})
      : assert(titles.length == containers.length,
            'You must have to provide same lenth of titles and containers'),
        super(key: key);

  @override
  State<MyTabbBar> createState() => _MyTabbBarState();
}

class _MyTabbBarState extends State<MyTabbBar> {
  // late List<Widget> tabTitles;
  late final PageController pageController;
  late int _internalCurrentIndex;

  @override
  void initState() {
    _internalCurrentIndex = widget.currentIndex;
    setState(() {});
    pageController = PageController(initialPage: _internalCurrentIndex);

    super.initState();
  }

  Widget _buildTitle(
    bool isActive,
    String title,
  ) {
    return isActive
        ? MyActiveTabIndicator(
            title: title,
          )
        : SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          );
  }

  void changeSate(int i) {
    _internalCurrentIndex = i;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Get.height * 0.05,
          width: Get.width,
          child: ListView.separated(
            itemBuilder: (constext, index) {
              return List.generate(
                  widget.titles.length,
                  (index) => GestureDetector(
                      onTap: () {
                        changeSate(index);
                        pageController.animateToPage(_internalCurrentIndex,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.bounceOut);
                      },
                      child: _buildTitle(index == _internalCurrentIndex,
                          widget.titles[index])))[index];
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                width: Get.width * 0.1,
              );
            },
            itemCount: widget.titles.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
          ),
        ),
        SizedBox(
            height: Get.height * 0.75,
            child: PageView(
                onPageChanged: (i) {
                  changeSate(i);
                },
                controller: pageController,
                children: widget.containers))
      ],
    );
  }
}
