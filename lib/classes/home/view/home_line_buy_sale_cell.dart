import 'package:btcoin/common/common.dart';
import 'package:flutter/material.dart';

class HomeLineBuySaleCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      height: 100,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Container(
            alignment: Alignment.center,
            height: 70,
            decoration: BoxDecoration(
                color: Common.mainColor,
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: Text(
              "买入",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )),
          SizedBox(
            width: 25,
          ),
          Expanded(
              child: Container(
            alignment: Alignment.center,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Text(
              "卖出",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ))
        ],
      ),
    );
  }
}
