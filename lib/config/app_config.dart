import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppConfig {
  final String appTitle;
  final String graphTitle;
  final String loadingLabel;
  final String buttonLabel;

  AppConfig({
    String? appTitle,
    String? graphTitle,
    String? loadingLabel,
    String? buttonLabel,
  })  : appTitle = appTitle ?? 'Universe',
        graphTitle = graphTitle ?? 'Evolution of the population:',
        loadingLabel = loadingLabel ?? 'Loading...',
        buttonLabel = buttonLabel ?? 'View stats';

  static AppConfig of(BuildContext context, {bool listen = false}) {
    return Provider.of<AppConfig>(context, listen: listen);
  }
}
