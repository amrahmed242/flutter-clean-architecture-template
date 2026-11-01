import 'dart:async';

import 'package:material_ui/material_ui.dart';
import 'package:go_router/go_router.dart';

class UI {
  ///wrapper that control the navigation process in more abstract way
  ///so you can handle the navigation behavior from one place.
  ///[replace] swaps the whole stack with the target location (`context.go`),
  ///otherwise the route is pushed on top and its pop result is returned.
  static Future<T?> pushNamed<T extends Object?>(
    BuildContext context, {
    required String route,
    Map<String, String> pathParameters = const {},
    Map<String, dynamic> queryParameters = const {},
    Object? extra,
    bool replace = false,
  }) async {
    if (replace) {
      context.goNamed(
        route,
        pathParameters: pathParameters,
        queryParameters: queryParameters,
        extra: extra,
      );
      return null;
    }
    return context.pushNamed<T>(
      route,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  ///wrapper that control the navigation process in more abstract way
  static void showInSnackBar(
    BuildContext context,
    String msg, {
    Color? color = Colors.green,
    bool long = false,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(milliseconds: long ? 2500 : 1400),
        backgroundColor: color,
        padding: const EdgeInsets.all(8),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(msg, style: const TextStyle(fontSize: 20, color: Colors.white))],
        ),
      ),
    );
  }
}
