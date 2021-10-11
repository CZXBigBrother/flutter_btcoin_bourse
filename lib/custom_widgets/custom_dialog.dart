import 'package:flutter/material.dart';

class CustomDialog {
  static Future show(
    BuildContext context,
    Widget child,
  ) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return GestureDetector(
            onTap: () {
              Navigator.of(context).pop(); //退出弹出框
            },
            child: Material(
              color: Color.fromRGBO(0, 0, 0, 0.5),
              child: GestureDetector(
                onTap: () {},
                child: Center(
                  child: child,
                ),
              ),
            ));
      },
    );
  }
}
