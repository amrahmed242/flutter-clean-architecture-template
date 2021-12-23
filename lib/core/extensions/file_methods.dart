import 'dart:io';

import 'package:mime/mime.dart';
import 'package:path/path.dart';

const supportedFileTypes = ['image', 'pdf'];

extension FileMethods on File {
  /*
  * return the currentfile type 
  * throws state error if check valid iption is true 
  */
  String type({bool checkValid = false}) {
    final mimeStr = lookupMimeType(path) ?? '';
    final fileFromat = mimeStr.split('/');
    return fileFromat.firstWhere((o) => supportedFileTypes.contains(o),
        orElse: !checkValid ? () => '' : null);
  }

  /*
  * return the currentfile name  
  */
  String get name => basename(path);
}
