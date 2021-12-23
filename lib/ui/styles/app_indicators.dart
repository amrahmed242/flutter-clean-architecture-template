import 'package:flutter/material.dart';

//TODO wrap with new directory and seprate it into seperate files
class AppIndicators {
  static loadingIndicator() => LoadingIndicator();
  static progressIndicator() => CustomProgressIndicator(progress: 0);
}

class LoadingIndicator extends StatelessWidget {
  final String? text;
  final double? size;
  const LoadingIndicator({Key? key, this.text, this.size = 40})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            const CircularProgressIndicator(),
            if (text != null)
              Text(
                text ?? '',
                style: const TextStyle(fontSize: 11, color: Colors.grey),
                maxLines: 1,
              ),
          ],
        ));
  }
}

class CustomProgressIndicator extends StatelessWidget {
  final int progress;
  final double height;
  const CustomProgressIndicator(
      {Key? key, this.height = 4, required this.progress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final paddingFactor = progress > 0 ? ((100 - progress) / 100) : 1;
    return Container(
      height: height,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(35)),
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
            margin: EdgeInsetsDirectional.only(
                end: constraints.maxWidth * paddingFactor),
          );
        },
      ),
    );
  }
}
