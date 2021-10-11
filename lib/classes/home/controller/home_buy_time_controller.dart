import 'package:btcoin/classes/home/view/home_buy_time_view_cell.dart';
import 'package:btcoin/common/common.dart';
import 'package:flutter/material.dart';

class HomeBuyTimeController extends StatefulWidget {
  @override
  _HomeBuyTimeControllerState createState() => _HomeBuyTimeControllerState();
}

class _HomeBuyTimeControllerState extends State<HomeBuyTimeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Common.mainColor,
      appBar: AppBar(
        backgroundColor: Common.mainColor,
        elevation: 0,
        title: Text("新人定投"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        children: [
          HomeBuyTimeViewCell(),
          HomeBuyTimeViewCell(),
          HomeBuyTimeViewCell(),
        ],
      ),
    );
  }
}
