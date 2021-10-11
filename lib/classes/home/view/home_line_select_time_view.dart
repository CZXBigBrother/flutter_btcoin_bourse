import 'package:btcoin/classes/home/model/data_model.dart';
import 'package:btcoin/common/common.dart';
import 'package:btcoin/service/screen_service.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeLineSelectTimeView extends StatefulWidget {
  @override
  _HomeLineSelectTimeViewState createState() => _HomeLineSelectTimeViewState();
}

class _HomeLineSelectTimeViewState extends State<HomeLineSelectTimeView> {
  static double childW = ScreenService.width / 5 - 10;
  int index = 0;
  List _list = ["1天", "1周", "1月", "1年", "所有"];

  @override
  Widget build(BuildContext context) {
    List<Widget> wlist = [];
    for (int i = 0; i < _list.length; i++) {
      wlist.add(GestureDetector(
        behavior: HitTestBehavior.translucent,
        child: getTimeView(_list[i], i == index),
        onTap: () {
          setState(() {
            index = i;
            TestData.listMain = i % 2 == 0 ? TestData.list : TestData.list2;
            TestData.listMain = i % 2 == 0 ? TestData.list : TestData.list2;
            TestData.highestPriceMain =
                i % 2 == 0 ? TestData.highestPrice : TestData.highestPrice2;
            TestData.lowestPriceMain =
                i % 2 == 0 ? TestData.lowestPrice : TestData.lowestPrice2;
            TestData().selectTimetreamController.add(1);
          });
        },
      ));
    }

    return Container(
      color: Colors.white,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: wlist,
      ),
    );
  }

  Widget getTimeView(String time, bool selected) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 48,
          child: Text(
            time,
            style: TextStyle(
              color: selected == true ? Common.mainColor : Colors.grey,
            ),
          ),
        ),
        Container(
          height: 2,
          width: childW,
          color: selected == true ? Common.mainColor : Colors.white,
        )
      ],
    );
  }
}
