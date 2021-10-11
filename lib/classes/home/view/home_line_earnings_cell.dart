import 'package:btcoin/common/common.dart';
import 'package:btcoin/custom_widgets/custom_line.dart';
import 'package:flutter/material.dart';

class HomeLineEarningsCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "今日收益",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "\$0.00",
                    style: TextStyle(color: Common.mainColor),
                  )
                ],
              ),
            ),
          ),
          CustomLine.lineVertical(),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "总收益",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "\$0.00",
                    style: TextStyle(color: Common.mainColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
