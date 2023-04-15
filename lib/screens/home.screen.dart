import 'package:cz/config/app_config.dart';
import 'package:cz/config/app_theme_provider.dart';
import 'package:cz/services/random_data_provider.dart';
import 'package:cz/widgets/core_widgets.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.of(context).primary.container.color,
        title: Text(
          AppConfig.of(context).appTitle,
          style: TextStyle(
            color: AppTheme.of(context).primary.onContainer.color,
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppConfig.of(context).graphTitle,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            StreamBuilder(
              stream: RandomDataProvider.of(context).population(),
              builder: (BuildContext context, AsyncSnapshot<Population> populationSnapshot) {
                if (!populationSnapshot.hasData) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                    child: Text(
                      AppConfig.of(context).loadingLabel,
                    ),
                  );
                }
                return Column(
                  children: [
                    CoreWidgets.of(context).graphWidget.widget(
                          context,
                          GraphWidgetParams(
                            population: populationSnapshot.data!,
                          ),
                        ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(AppTheme.of(context).secondary.key.color),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: AppTheme.of(context).radius,
                          ),
                        ),
                      ),
                      onPressed: () async {
                        final Population population = populationSnapshot.data!;
                        await showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Stats at the moment you clicked the button'),
                                content: Column(
                                  children: [
                                    Text('First: ${population.one}'),
                                    Text('Second: ${population.two}'),
                                    Text('Third: ${population.three}'),
                                    Text('Fourth: ${population.four}'),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Text(AppConfig.of(context).buttonLabel),
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
