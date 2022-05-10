import 'package:flutter/material.dart';

class Gap extends SizedBox {
  const Gap({Key? key, int times = 1}) : super(key: key, height: (times * 20));

  Gap.custom({double? height, double? weight, Widget? child})
      : super(
            height: height ?? 40,
            width: weight ?? double.infinity,
            child: child);

  Gap.vertiacl(double h) : super(height: h);
  Gap.horizontal(double w) : super(width: w);
}
