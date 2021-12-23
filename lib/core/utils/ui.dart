import 'dart:async';

import 'package:flutter/material.dart';

class UI {
  ///wrapper that control the navigation process in more abstract way
  ///so you can handle the navigation behavuior from one place.
  static Future<dynamic> pushNamed(BuildContext context,
      {required String route, Object? args, bool replace = false}) async {
    return replace
        ? await Navigator.pushReplacementNamed(context, route, arguments: args)
        : await Navigator.pushNamed(context, route, arguments: args);
  }

  ///wrapper that control the navigation process in more abstract way
  static showInSnackBar(BuildContext context, msg,
      {Color color = Colors.green, bool long = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(milliseconds: long ? 2500 : 1400),
        backgroundColor: color,
        padding: const EdgeInsets.all(8),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              msg,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
