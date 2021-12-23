import 'package:date_format/date_format.dart';

class DateHelper {
  Duration getDuration(int startTimeStamp) {
    final launchDate = DateTime.fromMillisecondsSinceEpoch(startTimeStamp * 1000);
    return launchDate.difference(DateTime.now());
  }

  String getLaunchDate(int startTimeStamp) {
    final launchDate = DateTime.fromMillisecondsSinceEpoch(startTimeStamp * 1000);
    final formatted = formatDate(launchDate, [yyyy, '-', mm, '-', dd, '  ', HH, ':', nn, ':', ss]);
    return formatted;
  }
}
