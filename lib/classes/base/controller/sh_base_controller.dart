import 'package:btcoin/classes/home/controller/home_buy_time_controller.dart';
import 'package:btcoin/classes/home/controller/home_controller.dart';
import 'package:btcoin/classes/home/controller/home_line_main_controller.dart';
import 'package:btcoin/classes/home/controller/home_list_coin_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SHBaseTabController extends StatefulWidget {
  SHBaseTabController({Key key}) : super(key: key);

  @override
  _SHBaseTabControllerState createState() => _SHBaseTabControllerState();
}

class _SHBaseTabControllerState extends State<SHBaseTabController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
              ),
              label: "首页",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.book,
              ),
              label: "财富",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.time,
              ),
              label: "资产",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
              ),
              label: "我的",
            ),
          ],
          activeColor: Colors.red,
          inactiveColor: Color(0xff333333),
          backgroundColor: Color(0xfff1f1f1),
          iconSize: 25.0,
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              switch (index) {
                case 0:
                  return HomeController();
                case 1:
                  return HomeBuyTimeController();
                case 2:
                  return HomeLineMainController();
                case 3:
                  return HomeListCoinController();
                default:
                  {
                    return Container();
                  }
              }
            },
          );
        });
  }
}
