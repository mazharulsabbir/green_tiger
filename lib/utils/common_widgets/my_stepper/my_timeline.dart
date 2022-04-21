import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'model/my_time_line_model.dart';

enum buublePosition {
  middle,
  start,
  end,
}

class MyTimeLine extends StatelessWidget {
  final List<MyTimeLineModel> timelines;
  final int currentIndex;

  const MyTimeLine(
      {Key? key, required this.timelines, required this.currentIndex})
      : super(key: key);

  Widget _buildBubble(bool _isActive) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _isActive ? Colors.green : Colors.grey,
      ),
      child: const Icon(
        Icons.done,
        color: Colors.white,
      ),
    );
  }

  Widget _buildTimeLineText(String text, bool _isActive) => Text(
        text,
        key: key,
        style: TextStyle(color: _isActive ? Colors.green : Colors.grey),
      );

  Widget _buildConnector(bool _isActive, {double legnth = 50}) {
    return Container(
      width: legnth,
      height: 5,
      color: _isActive ? Colors.blue : Colors.grey,
    );
  }

  Widget _buildEveryTile(
      {required MyTimeLineModel model,
      required buublePosition position,
      required bool isActive}) {
    late Widget child;
    switch (position) {
      case buublePosition.start:
        child = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _buildBubble(isActive),
                _buildConnector(isActive),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            _buildTimeLineText(model.title, isActive)
          ],
        );
        break;
      case buublePosition.end:
        child = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                _buildConnector(isActive),
                _buildBubble(isActive),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            _buildTimeLineText(model.title, isActive)
          ],
        );
        break;
      default:
        child = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                _buildConnector(isActive),
                _buildBubble(isActive),
                _buildConnector(isActive),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            _buildTimeLineText(model.title, isActive)
          ],
        );
    }
    return child;
  }

  Widget _buildHeaderPart(List<MyTimeLineModel> timelines, int currentIndex) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
              timelines.length,
              (index) => _buildEveryTile(
                  model: timelines[index],
                  position: getBubblePoistion(index, timelines.length),
                  isActive: index == currentIndex || index < currentIndex)),
        ),
      ),
    );
  }

  buublePosition getBubblePoistion(int currentIndex, int legnth) {
    if (currentIndex == 0) return buublePosition.start;
    if (currentIndex == (legnth - 1)) return buublePosition.end;
    return buublePosition.middle;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(children: [
        _buildHeaderPart(timelines, currentIndex),
        SizedBox(
          height: Get.height * 0.723,
          child: ListView(
            shrinkWrap: true,
            children: [
              timelines[currentIndex].content,
            ],
          ),
        ),
      ]),
    );
  }
}
