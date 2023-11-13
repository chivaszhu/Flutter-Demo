import 'package:flutter/material.dart';
class DeviceUtils {
  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static double getBottomBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  static Color hexToColor(String hexString) {
    return Color(int.parse(hexString.substring(1, 7), radix: 16) + 0xFF000000);
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}