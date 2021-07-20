import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double minScreenWidth;
  static double minScreenHeight;

  static double _screenSymmetricHorizontal;
  static double _screenSymmetricVertical;
  static double minBlockHorizontal;
  static double minBlockVertical;
  static double screenWidthNoPaddingHorizontal;
  static double screenWidthNoPaddingHorizontalVertical;
  static double screenWidthWithPadding;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    screenWidthWithPadding = _mediaQueryData.size.width -
        (_mediaQueryData.padding.left + _mediaQueryData.padding.right);
    minScreenWidth = screenWidth / 100;
    minScreenHeight = screenHeight / 100;

    _screenSymmetricHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _screenSymmetricVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    minBlockHorizontal = (screenWidth - _screenSymmetricHorizontal) / 100;
    minBlockVertical = (screenHeight - _screenSymmetricVertical) / 100;

    // remove padding from screen size
    screenWidthNoPaddingHorizontal = (screenWidth - _screenSymmetricHorizontal);
    screenWidthNoPaddingHorizontalVertical =
        (screenHeight - _screenSymmetricVertical);
  }
}
