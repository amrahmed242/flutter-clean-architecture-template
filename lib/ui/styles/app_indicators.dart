import 'package:flutter/material.dart';

class AppIndicators {
  static _LoadingIndicator loadingIndicator({String? text, double? size}) =>
      _LoadingIndicator(size: size, text: text);
  static _ProgressIndicator progressIndicator({double? progress, double? height}) =>
      _ProgressIndicator(progress: progress, height: height);
}

class _LoadingIndicator extends StatelessWidget {
  final String? text;
  final double? size;
  const _LoadingIndicator({Key? key, this.text, this.size = 40}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: text != null
          ? Stack(
              alignment: Alignment.center,
              children: <Widget>[
                const CircularProgressIndicator(),
                Text(
                  text ?? '',
                  style: const TextStyle(fontSize: 11, color: Colors.grey),
                  maxLines: 1,
                ),
              ],
            )
          : const CircularProgressIndicator(),
    );
  }
}

class _ProgressIndicator extends StatelessWidget {
  final double? progress;
  final double? height;
  const _ProgressIndicator({Key? key, this.height = 4, this.progress = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final paddingFactor = (progress ?? 0) > 0 ? ((100 - (progress ?? 0)) / 100) : 1;
    return Container(
      height: height,
      decoration:
          BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(35)),
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: double.infinity,
            height: height,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(35),
            ),
            margin: EdgeInsetsDirectional.only(end: constraints.maxWidth * paddingFactor),
          );
        },
      ),
    );
  }
}
