import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppColor {
  final BoxDecoration key;
  final BoxDecoration onKey;
  final BoxDecoration container;
  final BoxDecoration onContainer;

  AppColor({
    required this.key,
    required this.onKey,
    required this.container,
    required this.onContainer,
  });
}

class BarColors {
  final BoxDecoration one;
  final BoxDecoration two;
  final BoxDecoration three;
  final BoxDecoration four;

  BarColors({
    required this.one,
    required this.two,
    required this.three,
    required this.four,
  });

  List<BoxDecoration> get values => [one, two, three, four];
}

class AppTheme {
  final AppColor primary;
  final AppColor secondary;
  final AppColor neutral;
  final BarColors barColors;
  final BorderRadius radius;

  AppTheme({
    AppColor? primary,
    AppColor? secondary,
    AppColor? neutral,
    BarColors? barColors,
    BorderRadius? radius,
  })  : primary = primary ??
            AppColor(
              key: BoxDecoration(color: Colors.blue.shade400),
              onKey: BoxDecoration(color: Colors.blue.shade100),
              container: BoxDecoration(color: Colors.blue.shade500),
              onContainer: const BoxDecoration(color: Colors.white),
            ),
        secondary = secondary ??
            AppColor(
              key: BoxDecoration(color: Colors.blue.shade500),
              onKey: BoxDecoration(color: Colors.green.shade100),
              container: BoxDecoration(color: Colors.green.shade900),
              onContainer: BoxDecoration(color: Colors.green.shade100),
            ),
        neutral = neutral ??
            AppColor(
              key: const BoxDecoration(color: Colors.white),
              onKey: const BoxDecoration(color: Colors.black87),
              container: const BoxDecoration(color: Colors.black12),
              onContainer: const BoxDecoration(color: Colors.white),
            ),
        barColors = barColors ??
            BarColors(
              one: BoxDecoration(color: Colors.red.shade500),
              two: BoxDecoration(color: Colors.blue.shade500),
              three: BoxDecoration(color: Colors.green.shade500),
              four: BoxDecoration(color: Colors.yellow.shade500),
            ),
        radius = radius ?? BorderRadius.circular(4);

  static AppTheme of(BuildContext context, {bool listen = false}) {
    return Provider.of<AppTheme>(context, listen: listen);
  }
}
