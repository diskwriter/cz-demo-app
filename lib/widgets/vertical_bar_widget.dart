import 'package:cz/services/random_data_provider.dart';
import 'package:flutter/material.dart';

class VerticalBarWidget extends StatelessWidget {
  final Population population;
  final List<Color> barColors = const [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
  ];

  const VerticalBarWidget({
    super.key,
    required this.population,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 48.0;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      height: 200,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: population.values
            .asMap()
            .entries
            .map(
              (MapEntry<int, int> entry) => AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: width / population.values.length,
                height: 200 * (entry.value / 100),
                color: barColors[entry.key],
              ),
            )
            .toList(),
      ),
    );
  }
}
