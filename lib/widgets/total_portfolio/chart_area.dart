import 'package:responsive_dashboard/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartArea extends StatelessWidget {
  const ChartArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      onDataLabelRender: (args) {
        int index = args.pointIndex!;
        List<CartesianChartPoint<dynamic>> dataPoints = args.dataPoints;
        if (dataPoints[index].y == 2300) {
          args.text = '2.320.00 USD\n Nov,7';
          args.textStyle = const TextStyle(
            fontSize: 8,
            color: textColor,
          );
          args.offset = const Offset(0, 20);
        } else {
          args.text = '';
          args.offset = const Offset(0, 20);
        }
      },
      onMarkerRender: (markerArgs) {
        if (markerArgs.pointIndex != 7) {
          markerArgs.markerWidth = 0;
          markerArgs.markerHeight = 0;
        }
      },
      plotAreaBackgroundColor: Colors.transparent,
      margin: EdgeInsets.zero,
      borderWidth: 0,
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
        plotOffset: 5,
        labelsExtent: 30,
        interval: 3,
        labelPosition: ChartDataLabelPosition.outside,
        labelAlignment: LabelAlignment.center,
        labelPlacement: LabelPlacement.onTicks,
        majorGridLines: const MajorGridLines(width: 0),
        majorTickLines: const MajorTickLines(width: 0),
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        labelStyle: const TextStyle(
          color: textColor,
          fontFamily: 'Roboto',
          fontSize: 14,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500,
        ),
      ),
      primaryYAxis: NumericAxis(
        minimum: 0,
        maximum: 2500,
        interval: 500,
        plotOffset: 5,
        majorGridLines: const MajorGridLines(width: 0),
        majorTickLines: const MajorTickLines(width: 0),
        axisLine: const AxisLine(width: 0),
        numberFormat: NumberFormat.compactCurrency(
          symbol: '',
        ),
        borderColor: Colors.transparent,
        labelStyle: const TextStyle(
          color: textColor,
          fontFamily: 'Roboto',
          fontSize: 14,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500,
        ),
      ),
      series: <ChartSeries<ChartAreaData, String>>[
        SplineAreaSeries(
          dataSource: chartAreaData,
          xValueMapper: (areaData, _) => areaData.month,
          yValueMapper: (areaData, _) => areaData.amount,
          gradient: LinearGradient(
            colors: [
              splineColor,
              secondaryBgColor.withAlpha(150),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        SplineSeries(
          width: 2,
          color: splineColor,
          markerSettings: const MarkerSettings(
            isVisible: true,
            color: primaryColor,
            borderColor: Colors.white,
          ),
          dataLabelSettings: const DataLabelSettings(
            isVisible: true,
            labelAlignment: ChartDataLabelAlignment.top,
          ),
          dataSource: chartAreaData,
          xValueMapper: (areaData, _) => areaData.month,
          yValueMapper: (areaData, _) => areaData.amount,
        )
      ],
    );
  }
}

class ChartAreaData {
  final String month;
  final double amount;
  ChartAreaData({
    required this.month,
    required this.amount,
  });
}

final List<ChartAreaData> chartAreaData = [
  ChartAreaData(month: 'Sept', amount: 600),
  ChartAreaData(month: '2Sept', amount: 1300),
  ChartAreaData(month: '3Sept', amount: 400),
  ChartAreaData(month: 'Oct', amount: 900),
  ChartAreaData(month: '2Oct', amount: 600),
  ChartAreaData(month: '3Oct', amount: 100),
  ChartAreaData(month: 'Nov', amount: 900),
  ChartAreaData(month: '2Nov', amount: 2300),
  ChartAreaData(month: '3Nov', amount: 1500),
  ChartAreaData(month: 'Dec', amount: 1800),
  ChartAreaData(month: '2Dec', amount: 1500),
  ChartAreaData(month: '3Dec', amount: 1600),
  ChartAreaData(month: 'Jan', amount: 1000),
  ChartAreaData(month: '2Jan', amount: 1400),
  ChartAreaData(month: '3Jan', amount: 1200),
  ChartAreaData(month: 'Feb', amount: 1300),
  ChartAreaData(month: '2Feb', amount: 1200),
  ChartAreaData(month: '3Feb', amount: 1500),
];
