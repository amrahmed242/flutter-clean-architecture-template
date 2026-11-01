import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_mvvm_clean_architecture/app/router.dart';
import 'package:flutter_mvvm_clean_architecture/shared/styles/app_theme.dart';
import 'package:material_ui/material_ui.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      theme: AppTheme.mainTheme,
      routerConfig: ref.watch(routerProvider),
      debugShowCheckedModeBanner: false,
    );
  }
}
