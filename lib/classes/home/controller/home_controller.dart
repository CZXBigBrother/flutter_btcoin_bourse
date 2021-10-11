import 'package:btcoin/classes/home/view/home_list_main_cell.dart';
import 'package:btcoin/common/common.dart';
import 'package:btcoin/custom_widgets/custom_line.dart';
import 'package:btcoin/service/screen_service.dart';
import 'package:flutter/material.dart';

class HomeController extends StatefulWidget {
  @override
  _HomeControllerState createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Common.mainbgColor,
      body: Column(
        children: [getHeaderView(), getListView()],
      ),
    );
  }

  //下补列表
  Widget getListView() {
    return Container(
      height: ScreenService.height - 330 - ScreenService.bottomSafeHeight - 50,
      child: ListView(
        padding: EdgeInsets.only(top: 15, bottom: 25),
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                getListHeader(),
                CustomLine.line(),
                HomeListMainCell.getListCell("目标定投", "+20.00%", "10开启定投", '3',
                    "目标收益率", "持有周期", "随心投", "降低成本", "自动卖出"),
                CustomLine.line(),
                HomeListMainCell.getListCell("UBTC", "+166.00", "马上去买入", '6',
                    "30天收益率", "持有周期", "低风险", "指数etf", "\$500起头"),
                CustomLine.line(),
                HomeListMainCell.getListCell("支付型基金", "+201.00", "马上去买入", '3',
                    "定投12期收益率", "持有周期", "低风险", "零费率", "只有7天"),
                CustomLine.line(),
              ],
            ),
          )
        ],
      ),
    );
  }

  //列表投空间
  Widget getListHeader() {
    return Container(
      alignment: Alignment.centerLeft,
      height: 50,
      child: Text("基金推荐"),
    );
  }

  //头部空间
  Widget getHeaderView() {
    return Container(
      height: 330,
      width: ScreenService.width,
//      color: Colors.red,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: getHeaderViewOne(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: getHeaderViewTwo(),
          )
        ],
      ),
    );
  }

  //下层浮动
  Widget getHeaderViewTwo() {
    return Container(
      height: 110,
      margin: EdgeInsets.only(left: 15, right: 15),
//      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          color: Colors.white),
      child: Row(
//        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/home/scan.jpg",
                width: 50,
                height: 50,
              ),
              Text("扫码")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/home/tranfer.jpg",
                width: 50,
                height: 50,
              ),
              Text("转账")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/home/withdraw.jpg",
                width: 50,
                height: 50,
              ),
              Text("提现")
            ],
          )
        ],
      ),
    );
  }

  //上层
  Widget getHeaderViewOne() {
    return Container(
      color: Common.mainColor,
      height: 300,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
//            color: Colors.amber,
            height: 75,
            alignment: Alignment.bottomRight,
            child: Icon(
              Icons.message,
              size: 30,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            height: 50,
//            color: Colors.red,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    "余额",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Icon(
                    Icons.remove_red_eye,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
//            color: Colors.red,
            margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
            height: 50,
            child: Row(
//              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    '\$',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Text(
                    "2.08",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  width: 100,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 50,
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    "充值",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    border: new Border.all(width: 1, color: Colors.white),
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
