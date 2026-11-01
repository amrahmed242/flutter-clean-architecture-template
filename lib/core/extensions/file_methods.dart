import 'dart:io';

import 'package:mime/mime.dart';
import 'package:path/path.dart';

const supportedFileTypes = ['image', 'pdf'];

extension FileMethods on File {
  /*
  * return the current file type 
  * throws state error if check valid option is true 
  */
  String type({bool checkValid = false}) {
    final mimeStr = lookupMimeType(path) ?? '';
    final fileFormat = mimeStr.split('/');
    return fileFormat.firstWhere(
      (o) => supportedFileTypes.contains(o),
      orElse: !checkValid ? () => '' : null,
    );
  }

  /*
  * return the current file name  
  */
  String get name => basename(path);
}
