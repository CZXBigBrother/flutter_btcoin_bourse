import 'package:btcoin/classes/home/model/data_model.dart';
import 'package:btcoin/classes/home/view/home_line_about_cell.dart';
import 'package:btcoin/classes/home/view/home_line_about_desc_cell.dart';
import 'package:btcoin/classes/home/view/home_line_buy_sale_cell.dart';
import 'package:btcoin/classes/home/view/home_line_coin_type_cell.dart';
import 'package:btcoin/classes/home/view/home_line_earnings_cell.dart';
import 'package:btcoin/classes/home/view/home_line_select_time_view.dart';
import 'package:btcoin/classes/home/view/test_draw_painter.dart';
import 'package:btcoin/classes/home/view/test_line_chart.dart';
import 'package:btcoin/common/common.dart';
import 'package:btcoin/custom_widgets/custom_line.dart';
import 'package:flutter/material.dart';

class HomeLineMainController extends StatefulWidget {
  @override
  _HomeLineMainControllerState createState() => _HomeLineMainControllerState();
}

class _HomeLineMainControllerState extends State<HomeLineMainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Common.mainColor,
        elevation: 0,
        title: Text("Bitcoin"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.only(bottom: 30),
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: getTopMoney(),
          ),
          Container(
            alignment: Alignment.center,
            child: getBo(),
          ),
          StreamBuilder(
            stream: TestData().selectTimetreamController.stream,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return Container(
                child: Stack(
                  children: [
                    TestLineChart(),
                    TestDrawChart(),
                  ],
                ),
              );
            },
          ),
          HomeLineSelectTimeView(),
          CustomLine.line(),
          HomeLineBuySaleCell(),
          CustomLine.line(),
          SizedBox(
            height: 20,
          ),
          HomeLineCoinTypeCell(),
          CustomLine.line(),
          HomeLineEarningsCell(),
          SizedBox(
            height: 20,
          ),
          HomeLineAboutCell(),
          SizedBox(
            height: 20,
          ),
          HomeLineAboutDescCell(),
        ],
      ),
    );
  }

  Widget getTopMoney() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(top: 10),
          alignment: Alignment.topLeft,
          child: Text(
            '\$',
            style: TextStyle(color: Common.mainColor),
            textAlign: TextAlign.left,
          ),
          height: 50,
        ),
        Container(
          margin: EdgeInsets.only(left: 5),
          child: Text(
            "1000",
            style: TextStyle(color: Common.mainColor, fontSize: 35),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 24),
          alignment: Alignment.topLeft,
          child: Text(
            '.513',
            style: TextStyle(color: Common.mainColor),
            textAlign: TextAlign.left,
          ),
          height: 50,
        ),
      ],
    );
  }

  Widget getBo() {
    return Text(
      "+\$1551.60(4.38%)",
      style: TextStyle(color: Common.mainColor),
    );
  }
}
