import 'package:cz/config/app_theme_provider.dart';
import 'package:cz/services/random_data_provider.dart';
import 'package:cz/widgets/app_widget.dart';
import 'package:cz/widgets/core_widgets.dart';
import 'package:flutter/material.dart';

class HorizontalBarWidget extends StatelessWidget {
  static AppWidget<GraphWidgetParams> appWidget() => AppWidget<GraphWidgetParams>(
        appWidgetBuilder: (BuildContext context, GraphWidgetParams params) => HorizontalBarWidget(
          population: params.population,
        ),
      );

  final Population population;

  const HorizontalBarWidget({
    super.key,
    required this.population,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 48.0;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      height: 200,
      child: Center(
        child: Row(
          children: population.values.asMap().entries.map((MapEntry<int, int> entry) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: width * (entry.value / 100),
              height: 50,
              decoration: AppTheme.of(context).barColors.values[entry.key],
            );
          }).toList(),
        ),
      ),
    );
  }
}
