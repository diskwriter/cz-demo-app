import 'package:flutter/material.dart';

class AppWidget<T> {
  final Widget Function(BuildContext context, T params) appWidgetBuilder;

  AppWidget({
    required this.appWidgetBuilder,
  });

  Widget widget(BuildContext context, T params) => appWidgetBuilder(context, params);
}
