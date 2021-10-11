import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

class CustomDivider {
  static Widget customDivider(
      {double height = 1, EdgeInsets margin = EdgeInsets.zero, Color color}) {
    return Container(
        margin: margin,
        child: Divider(
          color: color,
          height: height,
        ));
  }
}
