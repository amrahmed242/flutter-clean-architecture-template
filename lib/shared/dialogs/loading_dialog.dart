import 'package:material_ui/material_ui.dart';

class LoadingDialog {
  static Future<T?> show<T>(BuildContext context) async {
    return await showDialog<T>(
      barrierColor: Colors.black.withValues(alpha: .75),
      context: context,
      barrierDismissible: false,
      builder: (context) => PopScope(
        canPop: false,
        child: Container(),
        // FadedWidget(
        //   repeat: true,
        //   widget: Center(child: Logo()),
        // ),
      ),
    );
  }
}
