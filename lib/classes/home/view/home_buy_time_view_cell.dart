import 'package:btcoin/common/common.dart';
import 'package:btcoin/custom_widgets/custom_line.dart';
import 'package:flutter/material.dart';

import 'test_chart.dart';

class HomeBuyTimeViewCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 10),
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
      height: 730,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.white),
      child: Column(
        children: [
          Container(
            child: getRowTitle(),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: getRowDesc(),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: getRowMoney(),
          ),
          Container(
            height: 200,
            child: DonutPieChart.withSampleData(),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            child: getCoinListView("BTC", "51.60\%"),
          ),
          CustomLine.line(),
          Container(
            height: 50,
            child: getCoinListView("BHC", "25.60\%"),
          ),
          CustomLine.line(),
          Container(
            height: 50,
            child: getCoinListView("BSV", "23.60\%"),
          ),
          CustomLine.line(),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 30,
            child: getMinBuy("最小购买:", "\$10"),
          ),
          Container(
            height: 30,
            child: getMinBuy("持有周期:", "7天"),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "买入",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            height: 60,
            decoration: BoxDecoration(
                color: Common.mainColor,
                borderRadius: BorderRadius.all(Radius.circular(5))),
          )
        ],
      ),
    );
  }

  Widget getRowTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "支付型基金",
          style: TextStyle(fontSize: 20),
        ),
        Icon(Icons.ac_unit),
      ],
    );
  }

  Widget getRowDesc() {
    return Text(
      "像发送短信一样全世界网络无缝付款,随时买入,您的资金依据配置比例分配",
      style: TextStyle(color: Colors.grey),
    );
  }

  Widget getRowMoney() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "净值:",
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          "\$2.2225",
          style: TextStyle(color: Common.mainColor),
        )
      ],
    );
  }

  Widget getCoinListView(String name, String rate) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.attach_money),
            Text(name, style: TextStyle(color: Colors.black, fontSize: 15)),
          ],
        ),
        Text(
          rate,
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }

  Widget getMinBuy(String title, String desc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(color: Colors.grey)),
        Text(
          desc,
        )
      ],
    );
  }
}
