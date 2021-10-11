import 'package:btcoin/common/common.dart';
import 'package:btcoin/service/navigation_service.dart';
import 'package:flutter/material.dart';

class CustomNavgation {
  static AppBar whiteAppBar(
      {String title = "",
      Widget btnLeft,
      List<Widget> actions,
      Brightness brightness,
      Function goBack}) {
    return AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: Common.navgationStyleBlackTitle,
        ),
        leading: btnLeft ??
            MaterialButton(
              onPressed: goBack ??
                  () {
                    NavigationService.shareInstance.goBack();
                  },
              child: Image.asset(
                "images/common/nav_back_black.png",
                width: 12,
                height: 18,
              ),
            ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: actions ?? [],
        brightness: brightness ?? Brightness.light
        // iconTheme: IconButton,
        );
  }

  static AppBar alphaAppBar(
      {String title = "",
      Widget btnLeft,
      List<Widget> actions,
      Brightness brightness,
      Function goBack}) {
    return AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: Common.navgationStyleWhiteTitle,
        ),
        leading: MaterialButton(
          onPressed: goBack ??
              () {
                NavigationService.shareInstance.goBack();
              },
          child: Image.asset(
            "images/common/nav_back_white.png",
            width: 22,
            height: 22,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: actions ?? [],
        brightness: brightness ?? Brightness.light
        // iconTheme: IconButton,
        );
  }
}
