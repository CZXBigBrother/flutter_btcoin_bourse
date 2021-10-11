import 'package:btcoin/common/common.dart';
import 'package:flutter/material.dart';

class HomeLineCoinTypeCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      color: Colors.white,
      height: 80,
      child: Row(
        children: [
          Text(
            "Bitcoin",
            style: TextStyle(fontSize: 20),
          ),
          Expanded(
            child: Container(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "0.000000",
                style: TextStyle(fontSize: 25, color: Common.mainColor),
              ),
              Text(
                "\$0.00",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.airplanemode_active)
        ],
      ),
    );
  }
}
