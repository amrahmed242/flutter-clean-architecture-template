import 'package:flutter/material.dart';
import 'package:flutter_mvvm_clean_architecture/core/constants/app_flavors.dart';
import 'package:flutter_mvvm_clean_architecture/core/services/preference/preference.dart';
import 'package:flutter_mvvm_clean_architecture/ui/routes/routes.dart';
import 'package:flutter_mvvm_clean_architecture/ui/styles/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

///to pass falvor value add --dart-define=FLAVOR=STAGING to flutter run command
final logger = Logger();
void main() async {
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        theme: AppTheme.mainTheme,
        routes: Routes.getAppRoutes(),
        debugShowCheckedModeBanner: false,
        initialRoute: '',
        // initialRoute: SplashScreen.routeName,
      ),
    );
  }
}

Future<void> initServices() async {
  //detect current flavor the app is running on
  const String flavor = String.fromEnvironment('FLAVOR', defaultValue: AppFlavor.STAGING);

  //1️⃣🔵🍉🌟🤏initialize shared preference service.
  await Preference.init();
}
