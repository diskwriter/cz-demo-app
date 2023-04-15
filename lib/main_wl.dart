import 'package:cz/app.dart';
import 'package:cz/config/app_config.dart';
import 'package:cz/config/app_theme_provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    config: AppConfig(
      appTitle: 'Wallonie',
      graphTitle: 'Évolution de la population:',
      loadingLabel: 'Chargement...',
      buttonLabel: 'Afficher les statistiques',
    ),
    theme: AppTheme(
      primary: AppColor(
        key: const BoxDecoration(color: Color(0xFFE21F39)),
        onKey: const BoxDecoration(color: Colors.white),
        container: const BoxDecoration(color: Color(0xFF820068)),
        onContainer: const BoxDecoration(color: Colors.white),
      ),
      secondary: AppColor(
        key: const BoxDecoration(color: Color(0xFFc81260)),
        onKey: const BoxDecoration(color: Colors.white),
        container: const BoxDecoration(color: Color(0xFFc81260)),
        onContainer: const BoxDecoration(color: Colors.white),
      ),
      neutral: AppColor(
        key: const BoxDecoration(color: Color(0xFF071E22)),
        onKey: const BoxDecoration(color: Colors.white),
        container: const BoxDecoration(color: Color(0xFF071E22)),
        onContainer: const BoxDecoration(color: Colors.white),
      ),
      radius: BorderRadius.circular(18.0),
      barColors: BarColors(
        one: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF820068), Color(0xFFC8005D), Color(0xFFED0334)],
            stops: [0.0, 50.0, 100.0],
          ),
        ),
        two: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF820068), Color(0xFFC8005D), Color(0xFFED0334)],
            stops: [0.0, 50.0, 100.0],
          ),
        ),
        three: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF820068), Color(0xFFC8005D), Color(0xFFED0334)],
            stops: [0.0, 50.0, 100.0],
          ),
        ),
        four: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF820068), Color(0xFFC8005D), Color(0xFFED0334)],
            stops: [0.0, 50.0, 100.0],
          ),
        ),
      ),
    ),
  ));
}
