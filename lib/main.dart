import 'package:material_ui/material_ui.dart';
import 'package:flutter_mvvm_clean_architecture/core/constants/app_flavors.dart';
import 'package:flutter_mvvm_clean_architecture/app/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

///to pass flavor value add --dart-define=FLAVOR=STAGING to flutter run command
final logger = Logger();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const ProviderScope(child: MyApp()));
}

Future<void> initServices() async {
  //detect current flavor the app is running on
  const String flavor = String.fromEnvironment('FLAVOR', defaultValue: AppFlavor.STAGING);
  debugPrint(flavor);
  //1️⃣initialize shared preference service.
  // await Preference.init();
  //2️⃣initialize local database (hive_ce), import 'package:hive_ce_flutter/hive_flutter.dart'.
  // await Hive.initFlutter();
}
