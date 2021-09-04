import 'package:finance_dark_ui_challenge/controller/home_page_controller.dart';
import 'package:finance_dark_ui_challenge/utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MoneyChartWidget extends StatelessWidget {
  HomePageController homePageController = HomePageController.instance();

  @override
  Widget build(BuildContext context) {
    return LineChart(LineChartData(
      lineBarsData: [
        LineChartBarData(
            spots: [
              for (int i = 0; i < homePageController.moneyChartData.length; i++)
                FlSpot(i.toDouble(),
                    homePageController.moneyChartData.elementAt(i).amount)
            ],
            isStrokeCapRound: true,
            barWidth: 4,
            colors: [AppColors.orange],
            dotData: FlDotData(show: false),
            isCurved: true,
            belowBarData: BarAreaData(
                show: true,
                colors: [
                  AppColors.orange.withOpacity(0.5),
                  AppColors.orange.withOpacity(0.1)
                ],
                gradientFrom: Offset(0.5, 0),
                gradientTo: Offset(0.5, 1)))
      ],
      gridData: FlGridData(show: false),
      titlesData: FlTitlesData(show: false),
      lineTouchData: LineTouchData(
          getTouchedSpotIndicator: (barData, spotIndex) {
            return [
              TouchedSpotIndicatorData(FlLine(color: Colors.transparent),
                  FlDotData(getDotPainter: (spot, d, barData, i) {
                return FlDotCirclePainter(
                    color: AppColors.orange,
                    radius: 6,
                    strokeColor: Colors.white,
                    strokeWidth: 5);
              }))
            ];
          },
          touchTooltipData: LineTouchTooltipData(
              tooltipBgColor: AppColors.grey,
              tooltipRoundedRadius: 10,
              tooltipPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              getTooltipItems: (touchSpots) {
                String data = homePageController.moneyChartData
                    .elementAt(touchSpots.first.x.toInt())
                    .date;

                return List<LineTooltipItem>.from([
                  LineTooltipItem(
                      data,
                      TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold))
                ]);
              })),
    ));
  }
}
