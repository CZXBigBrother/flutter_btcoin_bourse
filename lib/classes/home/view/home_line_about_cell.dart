import 'package:btcoin/common/common.dart';
import 'package:btcoin/custom_widgets/custom_line.dart';
import 'package:flutter/material.dart';

class HomeLineAboutCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 140,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: Colors.grey[100],
            child: Text(
              "关于比特币",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            height: 80,
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
          )
        ],
      ),
    );
  }
}
