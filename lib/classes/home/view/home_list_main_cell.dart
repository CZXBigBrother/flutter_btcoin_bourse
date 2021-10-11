import 'package:flutter/material.dart';
import 'package:btcoin/common/common.dart';

class HomeListMainCell {
  static Widget getListCell(String title, String rate, String buttonTitle, String time,
      String subTitle1, String subTitle2, String l1, String l2, String l3) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 160,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(title),
              ),
              Container(
                width: 100,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 30,
//                margin: EdgeInsets.only(right: 15),
                child: Text(
                  buttonTitle,
                  style: TextStyle(color: Common.mainColor, fontSize: 11),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  border: new Border.all(width: 1, color: Common.mainColor),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 90,
//            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      rate,
                      style: TextStyle(fontSize: 30, color: Common.mainColor),
                    ),
                    Text(
                      subTitle1,
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: time,
                            style: TextStyle(fontSize: 30, color: Colors.black),
                            children: [
                          TextSpan(
                              text: "个月",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black))
                        ])),
//                    Text.rich(
//                      "3",
//                      style: TextStyle(fontSize: 30, color: Colors.black),
//                    ),
                    Text(
                      subTitle2,
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    )
                  ],
                ),
                Container(
                  width: 90,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: Common.mainColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                          ),
                          Text(" ${l1}")
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: Common.mainColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                          ),
                          Text(" ${l2}")
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: Common.mainColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                          ),
                          Text(" ${l3}")
                        ],
                      )
                    ],
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
