import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class DonutPieChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  DonutPieChart(this.seriesList, {this.animate});

  /// Creates a [PieChart] with sample data and no transition.
  factory DonutPieChart.withSampleData() {
    return new DonutPieChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.PieChart(seriesList,
        animate: animate,
        // Configure the width of the pie slices to 60px. The remaining space in
        // the chart will be left as a hole in the center.
        defaultRenderer: new charts.ArcRendererConfig(
            startAngle: pi / -2,
            arcWidth: 30,
            arcRendererDecorators: [
              new charts.ArcLabelDecorator(
                  labelPosition: charts.ArcLabelPosition.auto)
            ]));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 23.10, "BSV 23.10", Colors.yellowAccent),
      new LinearSales(1, 51.6, "BSV 51.6", Colors.orange),
      new LinearSales(2, 25.3, "BSV 25.3", Colors.green),
    ];

    return [
      new charts.Series<LinearSales, int>(
          id: 'Sales',
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.sales,
          data: data,
          labelAccessorFn: (LinearSales sales, _) => sales.labelAccessorFn,
          overlaySeries: true,
          displayName: "订单",
          colorFn: (LinearSales sales, _) =>
              charts.ColorUtil.fromDartColor(sales.colorFn),
          outsideLabelStyleAccessorFn: (LinearSales sales, _) =>
              charts.TextStyleSpec(
                  color: charts.ColorUtil.fromDartColor(sales.colorFn))),
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final double sales;
  final String labelAccessorFn;
  final Color colorFn;

  LinearSales(this.year, this.sales, this.labelAccessorFn, this.colorFn);
}
