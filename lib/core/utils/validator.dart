import 'package:flutter/material.dart';

mixin Validator {
  // String phoneValidator(String value, BuildContext context) {
  //   if (value == null || value.isEmpty) {
  //     return AppLocalizations.of(context).translate("phone_validator");
  //   }
  //   return null;
  // }

  String? namelValidator(String value) {
    if (value.isEmpty || value.length < 4) {
      return 'error string';
    }
    return null;
  }

  String? textFieldValidator(String value, BuildContext context) {
    if (value.isEmpty) {
      return 'error string';
    } else if (value.length < 2) {
      return 'Too short text';
    }
    return null;
  }

  String? questionFieldValidator(String value) {
    if (value.isEmpty) {
      return 'error string';
    }
    return null;
  }

  String? dateFieldValidator(String value) {
    if (value.isEmpty) {
      return 'error string';
    }
    return null;
  }

  String? emailValidator(String value, BuildContext context) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(value)) {
      return 'Inavalid Email Adress';
    }
    return null;
  }

  String? passwordValidator(String value) {
    if (value.isEmpty || value.length < 3) {
      return 'error string';
    }
    return null;
  }

  String? mobileValidator(String value, BuildContext context) {
    if (value.isEmpty) {
      return 'Mobile is empty';
    }
    return null;
  }

  String? userNameValidator(String value) {
    if (value.isEmpty || value.length < 2) {
      return 'error string';
    }
    return null;
  }
}
