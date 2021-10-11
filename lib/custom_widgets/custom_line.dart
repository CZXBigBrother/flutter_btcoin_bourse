import 'package:btcoin/common/common.dart';
import 'package:flutter/material.dart';

class CustomLine {
  static Widget line({double height = 1, Color color = Common.lineColor}) {
    return Divider(height: height, color: color);
  }

  static Widget lineVertical(
      {double width = 1, Color color = Common.lineColor}) {
    return VerticalDivider(width: 1, color: color);
  }
}
