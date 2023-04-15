import 'package:cz/app.dart';
import 'package:cz/config/app_config.dart';
import 'package:cz/config/app_theme_provider.dart';
import 'package:cz/widgets/core_widgets.dart';
import 'package:cz/widgets/horizontal_bar_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    config: AppConfig(
      appTitle: 'Vlaanderen',
      graphTitle: 'Evolutie van de populatie:',
      loadingLabel: 'Laden...',
      buttonLabel: 'Statistieken bekijken',
    ),
    theme: AppTheme(
      primary: AppColor(
        key: const BoxDecoration(color: Color(0xFFFFE615)),
        onKey: const BoxDecoration(color: Color(0xFF333332)),
        container: const BoxDecoration(color: Color(0xFFFFE615)),
        onContainer: const BoxDecoration(color: Color(0xFF333332)),
      ),
      secondary: AppColor(
        key: const BoxDecoration(color: Color(0xFF0055cc)),
        onKey: const BoxDecoration(color: Colors.white),
        container: const BoxDecoration(color: Color(0xFF0055cc)),
        onContainer: const BoxDecoration(color: Colors.white),
      ),
      radius: BorderRadius.circular(3.0),
    ),
    widgets: CoreWidgets(
      graphWidget: HorizontalBarWidget.appWidget(),
    ),
  ));
}
