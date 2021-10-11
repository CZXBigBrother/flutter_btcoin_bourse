import 'dart:async';

import 'package:btcoin/classes/home/model/data_model.dart';
import 'package:btcoin/common/common.dart';
import 'package:btcoin/service/screen_service.dart';
import 'package:flutter/material.dart';

class TestDrawChart extends StatefulWidget {
  @override
  _TestDrawChartState createState() => _TestDrawChartState();
}

class _TestDrawChartState extends State<TestDrawChart> {
  Offset _point;
  StreamController _streamController = new StreamController.broadcast();

  @override
  Widget build(BuildContext context) {

    return Container(
      width: ScreenService.width,
      height: 300,
      child: Stack(
        children: [
          StreamBuilder(
              stream: _streamController.stream,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (_point != null) {
                  double w1 = ScreenService.width / (TestData.listMain.length - 1);
                  int index = (_point.dx / w1).toInt();
                  Map data = TestData.listMain[index];
                  return Positioned(
                    left: index * w1 - 100,
                    child: Container(
                      width: 200,
//                      color: Colors.red,
                      child: Text(
                        "${data['dateTime']}\n${data['presentPrice']}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Common.mainColor,fontSize: 10),
                      ),
                    ),
                  );
                } else {
                  return Text("");
                }
              }),
          StreamBuilder(
              stream: _streamController.stream,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return CustomPaint(
                  size: Size(ScreenService.width, 300),
                  painter: new MyTouchPainter(point: _point),
                );
              }),
          GestureDetector(
            onPanUpdate: (DragUpdateDetails details) {
              RenderBox referenceBox = context.findRenderObject();
              Offset localPosition =
                  referenceBox.globalToLocal(details.localPosition);
              _point = localPosition;
              _streamController.sink.add(1);
            },
            onPanEnd: (DragEndDetails details) {
              _point = null;
              _streamController.sink.add(1);
            },
          ),
        ],
      ),
    );
  }
}

class MyTouchPainter extends CustomPainter {
  MyTouchPainter({this.point});

  Offset point;

  ///[定义画笔]
  Paint _paint = Paint()
    ..color = Common.mainColor //画笔颜色
    ..strokeCap = StrokeCap.round //画笔笔触类型
    ..isAntiAlias = true //是否启动抗锯齿
    ..style = PaintingStyle.stroke //绘画风格，默认为填充
    ..strokeWidth = 2.0; //画笔的宽度

  @override
  void paint(Canvas canvas, Size size) {
    if (point == null) {
      return;
    }
    if (point.dx == null) {
      return;
    }
    double w1 = ScreenService.width / (TestData.listMain.length - 1);
    int index = (point.dx / w1).toInt();
    Map data = TestData.listMain[index];
    double presentPrice = double.parse(data['presentPrice']);

    var max = size.height; // size获取到宽度
    var dashWidth = 5;
    var dashSpace = 5;
    double startY = 30;
    final space = (dashSpace + dashWidth);

    while (startY < max) {
      canvas.drawLine(Offset(index * w1, startY),
          Offset(index * w1, startY + dashSpace), _paint);
      startY += space;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
