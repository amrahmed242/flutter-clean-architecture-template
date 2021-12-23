import 'package:flutter/material.dart';

class LoadingDialog {
  static Future<T> show<T>(BuildContext context) async {
    return await showDialog(
      barrierColor: Colors.black.withOpacity(.75),
      context: context,
      barrierDismissible: false,
      builder: (context) =>
          WillPopScope(onWillPop: () async => false, child: Container()
              // FadedWidget(
              //   repeat: true,
              //   widget: Center(child: Logo()),
              // ),
              ),
    );
  }
}
