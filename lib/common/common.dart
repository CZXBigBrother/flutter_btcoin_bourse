import 'package:flutter/material.dart';

class Common {
  static const Color mainColor = const Color.fromRGBO(91, 186, 157, 1);
  static const Color mainLightColor = const Color.fromRGBO(91, 186, 157, 0.3);
  static const Color mainbgColor = const Color.fromRGBO(234, 234, 234, 1);

  static int stringToHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return int.parse(buffer.toString(), radix: 16);
  }

  static Color colorFromHex(String hexString) {
    return Color(Common.stringToHex(hexString));
  }

  static const Color blackColor33 = const Color(0xFF333333);
  static const Color blackColor66 = const Color(0xFF666666);
  static const Color blackColor99 = const Color(0xFF999999);
  static const Color blackColorCC = const Color(0xFFCCCCCC);

  static const Color lineColor = const Color(0xFFEEEEEE);

  static const Color whiteBackgroundColor = const Color(0xFFFFFFFF);
  static const Color greyBackgroundColor = const Color(0xFFF6F6F6);

  static const FontWeight fontMedium = FontWeight.w500;
  static const FontWeight fontRegular = FontWeight.normal;

  static const Color blackColorTitle = const Color(0xFF434B65);
  static const Color blackColorLightTitle = const Color(0xFF848DAA);

  static const Color greyColorTitle = const Color(0xFFA6B4C4);

  static const Color blueColorTitle = const Color(0xFF0E9DFF); //007BFF 186CFF
  static const Color blueColorBackground = const Color(0xFF0E9DFF);
  static const Color blueColorBackground30 = const Color(0x4D298AFF);
  static const Color blueColorLightBackground = const Color(0xFFBAD0FB);

  static const Color whiteColorBackground = const Color(0xFFF2F2F2);
  static const Color greenColorBackground = const Color(0xFF33C36F);
  static const Color greenColorTitle = const Color(0xFF20CA7D);

  static const Color greenColorWaterTitle = const Color(0xFF4DA585);
  static const Color orangeColorTitle = const Color(0xFFFD8749);
  static const Color redColorTitle = const Color(0xFFFD4F4F); //FF5050

  static const double navgationFontTitle = 18;
  static const Color navgationColorBackground = const Color(0xFFFFFFFF);
  static const TextStyle navgationStyleWhiteTitle = const TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: Common.navgationFontTitle,
      fontWeight: Common.fontMedium);

  static const TextStyle navgationStyleBlackTitle = const TextStyle(
      color: const Color(0xFF232323),
      fontSize: Common.navgationFontTitle,
      fontWeight: Common.fontMedium);

  static String dateToTimestamp(DateTime time) {
    return (time.millisecondsSinceEpoch / 1000).toInt().toString();
  }
}
