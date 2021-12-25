import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/views/users_page/users_page.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    return {
      UsersScreen.routeName: (context) => const UsersScreen(),
      // SplashScreen.routeName: (context) => SplashScreen(),
      // HomePage.routeName: (context) => HomePage(),
      // LaunchPage.routeName: (context) => LaunchPage(rocketLaunch: ModalRoute.of(context).settings.arguments),
    };
  }
}
