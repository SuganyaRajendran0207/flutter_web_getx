import 'package:flutter/services.dart';

enum Environment { DEV, STAGING, PROD }

class AppConstants {

  static dismissKeyboard() {
    return SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  static const String fontOpenSans = 'OpenSans';

}
