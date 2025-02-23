import 'package:flutter/material.dart';
import 'package:weatherapp/constants/text_styles.dart';
import 'package:weatherapp/extensions/datetime.dart';
import 'package:weatherapp/views/gradient_container.dart';
import 'package:weatherapp/views/hourly_forecast_view.dart';
import 'package:weatherapp/views/weekly_forecast_view.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GradientContainer(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text('Forecast Report', style: TextStyles.h1),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Today', style: TextStyles.h2),
                Text(DateTime.now().dateTime, style: TextStyles.subtitleText),
              ],
            ), // Row
            const SizedBox(height: 20),
            const HourlyForecastView(),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Next Forecast', style: TextStyles.h1),
                Icon(Icons.calendar_month_outlined, color: Colors.white),
              ],
            ), // Row
            const SizedBox(height: 20),
            WeeklyForecastView(),
          ],
        ), // GradientContainer
      ), // Center
    ); // Scaffold
  }
}
