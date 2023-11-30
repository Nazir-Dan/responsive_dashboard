import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DoughnutChart extends StatelessWidget {
  const DoughnutChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 200,
          height: 200,
          child: SfCircularChart(
            series: <CircularSeries>[
              DoughnutSeries<ChartData, String>(
                dataSource: chartData,
                innerRadius: '80%',
                startAngle: 270,
                endAngle: 270,
                xValueMapper: (chartData, _) => chartData.x,
                yValueMapper: (chartData, _) => chartData.y,
                pointColorMapper: (chartData, _) => chartData.color,
              )
            ],
          ),
        ),
        Positioned.fill(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_drop_up,
                color: Colors.blueAccent,
              ),
              Text(
                '\$20 (1%)',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: Colors.blueAccent,
                      fontSize: 10,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

final List<ChartData> chartData = [
  const ChartData(x: 'David', y: 40, color: Color.fromARGB(255, 239, 142, 25)),
  const ChartData(x: 'Steve', y: 35, color: Color.fromARGB(255, 240, 185, 11)),
  const ChartData(x: 'Jack', y: 25, color: Color.fromARGB(255, 99, 104, 144)),
];

@immutable
class ChartData {
  final String x;
  final double y;
  final Color color;
  const ChartData({
    required this.x,
    required this.y,
    required this.color,
  });
}
