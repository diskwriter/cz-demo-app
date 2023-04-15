import 'package:cz/config/app_config.dart';
import 'package:cz/config/app_theme_provider.dart';
import 'package:cz/screens/home.screen.dart';
import 'package:cz/services/random_data_provider.dart';
import 'package:cz/widgets/core_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  final CoreWidgets? _widgets;
  final AppTheme? _theme;
  final AppConfig? _config;

  const MyApp({
    CoreWidgets? widgets,
    AppTheme? theme,
    AppConfig? config,
    super.key,
  })  : _widgets = widgets,
        _theme = theme,
        _config = config;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<RandomDataProvider>(
          create: (_) => RandomDataProvider(),
        ),
        Provider<AppConfig>(
          create: (_) => _config ?? AppConfig(),
        ),
        Provider<CoreWidgets>(
          create: (_) => _widgets ?? CoreWidgets(),
        ),
        Provider<AppTheme>(
          create: (_) => _theme ?? AppTheme(),
        )
      ],
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: Home(),
      ),
    );
  }
}
