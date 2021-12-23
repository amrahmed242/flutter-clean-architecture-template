import 'package:flutter/material.dart';

enum DeviceScreenType { desktop, mobile, tablet }

class ScreenUtil {
  static const int defaultWidth = 1080;
  static const int defaultHeight = 1920;

  /// Size of the phone in UI Design , px
  static num? uiWidthPx;
  static num? uiHeightPx;

  /// allowFontScaling Specifies whether fonts should scale to respect Text Size accessibility settings. The default is false.
  static bool? allowFontScaling;

  static MediaQueryData? _mediaQueryData;
  static Orientation? _orientation;
  static double? _screenWidth;
  static double? _screenHeight;
  static double? _pixelRatio;
  static double? _statusBarHeight;
  static double? _bottomBarHeight;
  static double? _textScaleFactor;

  static void init(BuildContext context,
      {num width = defaultWidth,
      num height = defaultHeight,
      bool allowFontScaling = false}) {
    uiWidthPx = width;
    uiHeightPx = height;
    allowFontScaling = allowFontScaling;

    MediaQueryData mediaQuery = MediaQuery.of(context);
    _mediaQueryData = mediaQuery;
    _orientation = mediaQuery.orientation;
    _pixelRatio = mediaQuery.devicePixelRatio;
    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
    _statusBarHeight = mediaQuery.padding.top;
    _bottomBarHeight = _mediaQueryData?.padding.bottom;
    _textScaleFactor = mediaQuery.textScaleFactor;
  }

  static DeviceScreenType? getDeviceType(MediaQueryData mediaQuery) {
    // fixed width changes with oreintation
    final deviceWidth = mediaQuery.size.shortestSide;

    if (deviceWidth > 950) {
      return DeviceScreenType.desktop;
    } else if (deviceWidth > 600) {
      return DeviceScreenType.tablet;
    } else {
      return DeviceScreenType.mobile;
    }
  }

  static MediaQueryData? get mediaQueryData => _mediaQueryData;

  static Orientation? get orientation => _orientation;

  /// The number of font pixels for each logical pixel.
  static double? get textScaleFactor => _textScaleFactor;

  /// The size of the media in logical pixels (e.g, the size of the screen).
  static double? get pixelRatio => _pixelRatio;

  /// The horizontal extent of this size.
  static double? get screenWidthDp => _screenWidth;

  ///The vertical extent of this size. dp
  static double? get screenHeightDp => _screenHeight;

  /// The vertical extent of this size. px
  static double? get screenWidth => _screenWidth! * _pixelRatio!;

  /// The vertical extent of this size. px
  static double? get screenHeight => _screenHeight! * _pixelRatio!;

  static bool? get portrait =>
      _mediaQueryData?.orientation == Orientation.portrait;

  /// The offset from the top
  static double? get statusBarHeight => _statusBarHeight;

  /// The offset from the bottom.
  static double? get bottomBarHeight => _bottomBarHeight;

  /// 实际的dp与UI设计px的比例
  /// The ratio of the actual dp to the design draft px
  static double? get scaleWidth => _screenWidth! / uiWidthPx!;

  static double? get scaleHeight => _screenHeight! / uiHeightPx!;

  static double? get scaleText =>
      scaleWidth! > scaleHeight! ? scaleWidth : scaleHeight;

  /// Adapted to the device width of the UI Design.
  /// Height can also be adapted according to this to ensure no deformation ,
  /// if you want a square
  static num width(num width) => width * scaleWidth!;

  /// Highly adaptable to the device according to UI Design
  /// It is recommended to use this method to achieve a high degree of adaptation
  /// when it is found that one screen in the UI design
  /// does not match the current style effect, or if there is a difference in shape.
  static num height(num height) => height * scaleHeight!;
}
