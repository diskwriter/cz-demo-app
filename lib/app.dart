import 'package:cz/screens/home.screen.dart';
import 'package:cz/services/random_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<RandomDataProvider>(
          create: (_) => RandomDataProvider(),
        ),
      ],
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: Home(),
      ),
    );
  }
}
