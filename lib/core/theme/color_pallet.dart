import 'package:flutter/material.dart';

abstract class ColorPallet {
  //don't let use as mixin
  ColorPallet._();
  static Color primary = Colors.yellow.shade700;
  static Color borderColor = Colors.black87;
  static Color surface = Colors.white;
}
