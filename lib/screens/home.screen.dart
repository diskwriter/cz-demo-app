import 'package:cz/services/random_data_provider.dart';
import 'package:cz/widgets/vertical_bar_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Universe',
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Evolution of the population',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            StreamBuilder(
              stream: RandomDataProvider.of(context).population(),
              builder: (BuildContext context, AsyncSnapshot<Population> populationSnapshot) {
                if (!populationSnapshot.hasData) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                    child: Text(
                      'Loading...',
                    ),
                  );
                }
                return Column(
                  children: [
                    VerticalBarWidget(population: populationSnapshot.data!),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
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
                      child: const Text('View stats'),
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
