import 'dart:async';
import 'package:btcoin/classes/home/model/data_model.dart';
import 'package:btcoin/common/common.dart';
import 'package:flutter/material.dart';

class HomeListCoinController extends StatefulWidget {
  @override
  _HomeListCoinControllerState createState() => _HomeListCoinControllerState();
}

class _HomeListCoinControllerState extends State<HomeListCoinController> {
  static int index = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var time = Timer.periodic(Duration(milliseconds: 1500), (t) {
      TestData.coinListMain =
          index % 2 == 0 ? TestData.coinList : TestData.coinList2;
      index++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Common.mainColor,
        elevation: 0,
        title: Text("财富"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: TestData.coinListMain.length,
          itemBuilder: (BuildContext context, int index) {
            return getCell(TestData.coinListMain[index]);
          }),
    );
  }

  Widget getCell(Map data) {
    num applies = data["applies"];
    bool isZ = applies > 0;

    return Container(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      padding: EdgeInsets.only(left: 15, right: 15),
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Row(
        children: [
          Text(
            (data["currencyName"]),
            style: TextStyle(color: Colors.black, fontSize: 19),
          ),
          Expanded(child: Container()),
          Text("\$${data["latestPrice"]}",
              style: TextStyle(color: Colors.black, fontSize: 20)),
          SizedBox(
            width: 50,
          ),
          Text("${data["applies"]}",
              style: TextStyle(
                  color: isZ == true ? Colors.green : Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
