import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Population {
  final int one;
  final int two;
  final int three;
  final int four;

  const Population({
    required this.one,
    required this.two,
    required this.three,
    required this.four,
  });

  List<int> get values => [one, two, three, four];
}

class RandomDataProvider {
  Stream<Population> population() {
    return Stream.periodic(const Duration(seconds: 2), (_) {
      List<int> original = [0];
      List<int> normalized = [];
      for (int i = 0; i < 3; i++) {
        original.add(math.Random().nextInt(100));
      }
      original.add(100);
      original.sort();

      int i = 0;
      while (i < original.length - 1) {
        final int first = original[i];
        final int second = original[i + 1];
        normalized.add(second - first);
        i++;
      }

      return Population(
        one: normalized[0],
        two: normalized[1],
        three: normalized[2],
        four: normalized[3],
      );
    });
  }

  static RandomDataProvider of(BuildContext context, {bool listen = false}) {
    return Provider.of<RandomDataProvider>(context, listen: listen);
  }
}
