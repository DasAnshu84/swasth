import 'package:flutter/material.dart';
hexStringToColor(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  return Color(int.parse(hexColor, radix: 16));
}

Color primarytheme = Color.fromARGB(255, 47, 126, 121);
Color greytheme = hexStringToColor('F4F3F6');