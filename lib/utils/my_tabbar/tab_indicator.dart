import 'package:flutter/material.dart';

class CustomTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(this, onChanged);
  }
}

class _CustomPainter extends BoxPainter {
  final CustomTabIndicator decoration;

  _CustomPainter(this.decoration, VoidCallback? onChanged) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration? configuration) {
    if(configuration == null || configuration.size == null) {
      return;
    }
    
    var indicatorHeight = 25.0;

    var _dy = (configuration.size!.height / 2) - (indicatorHeight / 2);

    //offset is the position from where the decoration should be drawn.
    //configuration.size tells us about the height and width of the tab.
    final Rect rect = Offset(
          offset.dx,
          _dy,
        ) &
        Size(
          configuration.size!.width,
          indicatorHeight,
        );

    final Paint paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, const Radius.circular(20.0)),
      paint,
    );
  }
}
