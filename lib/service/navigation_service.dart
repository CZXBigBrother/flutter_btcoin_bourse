import 'package:btcoin/custom_widgets/custom_route.dart';
import 'package:flutter/cupertino.dart';

class NavigationService {
  factory NavigationService() => _getInstance();

  static NavigationService get shareInstance => _getInstance();
  static NavigationService _instance;

  NavigationService._internal() {
    // 初始化
    navigatorKey = GlobalKey<NavigatorState>();
  }

  static NavigationService _getInstance() {
    if (_instance == null) {
      _instance = new NavigationService._internal();
    }
    return _instance;
  }

  // NavigationService() {
  //   navigatorKey = GlobalKey<NavigatorState>();
  // }
  GlobalKey<NavigatorState> navigatorKey;

  Future<T> navigateTo<T>(Route<T> route) {
    return navigatorKey.currentState.push<T>(route);
  }

  Future<T> navigateRemoveUntil<T>(Route<T> newRoute) {
    return navigatorKey.currentState
        .pushAndRemoveUntil(newRoute, (route) => false);
  }

  Future<T> navigateReplacement<T>(Route<T> newRoute) {
    return navigatorKey.currentState.pushReplacement(newRoute);
  }

  void goBack() {
    navigatorKey.currentState.pop();
  }

  void pop({T}) {
    navigatorKey.currentState.pop(T);
  }

  void popT(T) {
    navigatorKey.currentState.pop(T);
  }

  Future cNavigateTo(Widget controller) {
    return this.navigateTo(CupertinoPageRoute(
      builder: (context) => controller,
    ));
  }

  Future cNavigateRemoveUntil(Widget controller) {
    return this.navigateRemoveUntil(CupertinoPageRoute(
      builder: (context) => controller,
    ));
  }

  Future cNavigateReplacement(Widget controller) {
    return this.navigateReplacement(CupertinoPageRoute(
      builder: (context) => controller,
    ));
  }

  Future fNavigateToAnimation(Widget controller) {
    return this.navigateTo(CustomFadeRoute(controller));
  }

  Future fNavigateReplacementAnimation(Widget controller) {
    return this.navigateReplacement(CustomFadeRoute(controller));
  }

  Future rNavigateToAnimation(Widget controller) {
    return this.navigateTo(CustomSlideReverseRoute(controller));
  }

  Future rNavigateReplacementAnimation(Widget controller) {
    return this.navigateReplacement(CustomSlideReverseRoute(controller));
  }
// Navigator.of(context).push(new CupertinoPageRoute(builder: (ctx) => new SHController()));
}
