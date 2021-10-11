import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui show window;

class ScreenService {
  /** 屏幕宽 */
  static double get width {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.size.width;
  }

  /** 屏幕高 */
  static double get height {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.size.height;
  }

  /** 倍数 */
  static double get scale {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.devicePixelRatio;
  }

  static double get textScaleFactor {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.textScaleFactor;
  }

  /** 导航高 */
  static double get navigationBarHeight {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.padding.top + kToolbarHeight;
  }

  static double get topSafeHeight {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.padding.top;
  }

  static double get statusHeight {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.padding.top;
  }

  static double get bottomSafeHeight {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.padding.bottom;
  }

  static updateStatusBarStyle(SystemUiOverlayStyle style) {
    SystemChrome.setSystemUIOverlayStyle(style);
  }

  /** 获取屏幕宽度 */
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /** 获取屏幕高度 */
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  /// 获取系统状态栏高度
  static double getSysStatsHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }
}
