// provider_setup.dart
import 'package:flutter/material.dart';

List getRiverpods(BuildContext context) {
  List independentServices = [];

  List dependentServices = [];

  List uiConsumableProviders = [];

  List riverpods = [
    ...independentServices,
    ...dependentServices,
    ...uiConsumableProviders,
  ];

  return riverpods;
}
