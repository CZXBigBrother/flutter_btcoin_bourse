import 'package:btcoin/classes/home/model/data_model.dart';
import 'package:btcoin/common/common.dart';
import 'package:btcoin/service/screen_service.dart';
import 'package:flutter/material.dart';

class TestLineChart extends StatefulWidget {
  @override
  _TestLineChartState createState() => _TestLineChartState();
}

class _TestLineChartState extends State<TestLineChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.lightGreenAccent,
      width: ScreenService.width,
      height: 300,
      child: CustomPaint(
        size: Size(ScreenService.width, 300),
        painter: MyPainter(),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  ///[定义画笔]
  Paint _paint = Paint()
    ..color = Common.mainColor //画笔颜色
    ..strokeCap = StrokeCap.round //画笔笔触类型
    ..isAntiAlias = true //是否启动抗锯齿
    ..style = PaintingStyle.stroke //绘画风格，默认为填充
    ..strokeWidth = 2.0; //画笔的宽度

  Paint _paintbg = Paint()
    ..color = Common.mainLightColor //画笔颜色
    ..strokeCap = StrokeCap.round //画笔笔触类型
    ..isAntiAlias = true //是否启动抗锯齿
    ..style = PaintingStyle.fill //绘画风格，默认为填充
    ..strokeWidth = 2.0; //画笔的宽度

  @override
  void paint(Canvas canvas, Size size) {
//    print(_list.length);
//    print('asdasdsadas');
    Path path = new Path();
    double w1 = ScreenService.width / (TestData.listMain.length - 1);
    Path pathbg = new Path();

    //todo:delete
    double W = ScreenService.width / (TestData.listMain.length - 1);

    double diffPrice = TestData.highestPriceMain - TestData.lowestPriceMain;

    for (int i = 0; i < TestData.listMain.length; i++) {
      Map data = TestData.listMain[i];

      double presentPrice = double.parse(data['presentPrice']);
      if (i == 0) {
        path.moveTo(
            w1 * i,
            280 -
                (presentPrice - TestData.lowestPriceMain) / (diffPrice) * 260);

        pathbg.moveTo(
            w1 * i,
            280 -
                (presentPrice - TestData.lowestPriceMain) / (diffPrice) * 260);
        print("0 MyTouchPainter");
        continue;
      }

      Map data2 = TestData.listMain[i - 1];
      double presentPrice2 = double.parse(data2['presentPrice']);
      double preX, preY, currentX, currentY;
      currentX = 0 + W * i;
      preX = 0 + W * (i - 1);
      preY =
          280 - (presentPrice2 - TestData.lowestPriceMain) / (diffPrice) * 260;
      currentY =
          280 - (presentPrice - TestData.lowestPriceMain) / (diffPrice) * 260;

      path.cubicTo((preX + currentX) / 2, preY, (preX + currentX) / 2, currentY,
          currentX, currentY);


      pathbg.cubicTo((preX + currentX) / 2, preY, (preX + currentX) / 2, currentY,
          currentX, currentY);

//      path.lineTo(w1 * i,
//          280 - (presentPrice - TestData.lowestPriceMain) / (diffPrice) * 260);
//      pathbg.lineTo(w1 * i,
//          280 - (presentPrice - TestData.lowestPriceMain) / (diffPrice) * 260);
    }

    pathbg.lineTo(ScreenService.width, 300.0);
    pathbg.lineTo(0.0, 300.0);

    canvas.drawPath(path, _paint);
    canvas.drawPath(pathbg, _paintbg);

//    canvas.drawColor(Common.mainLightColor, BlendMode.dstOver);
//    canvas.drawLine(Offset(0, 0), Offset(100, 100), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
