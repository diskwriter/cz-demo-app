import 'package:cz/services/random_data_provider.dart';
import 'package:cz/widgets/app_widget.dart';
import 'package:cz/widgets/vertical_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GraphWidgetParams {
  final Population population;

  GraphWidgetParams({
    required this.population,
  });
}

class CoreWidgets {
  final AppWidget<GraphWidgetParams> graphWidget;

  CoreWidgets({
    AppWidget<GraphWidgetParams>? graphWidget,
  }) : graphWidget = graphWidget ?? VerticalBarWidget.appWidget();

  static CoreWidgets of(
    BuildContext context, {
    bool listen = false,
  }) {
    return Provider.of<CoreWidgets>(context, listen: listen);
  }
}
