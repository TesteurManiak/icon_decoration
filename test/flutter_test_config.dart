import 'dart:async';

import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  const isRunningInCi = bool.fromEnvironment('CI');

  return AlchemistConfig.runWithConfig(
    config: AlchemistConfig(
      theme: ThemeData(useMaterial3: false),
      platformGoldensConfig: const PlatformGoldensConfig(
        // ignore: avoid_redundant_argument_values
        enabled: !isRunningInCi,
      ),
      ciGoldensConfig: const CiGoldensConfig(tolerance: 0.01),
    ),
    run: testMain,
  );
}
