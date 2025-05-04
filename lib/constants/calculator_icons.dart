// ignore_for_file: constant_identifier_names

import 'package:flutter/widgets.dart';

class Calculator {
  Calculator._();

  static const _kFontFam = 'Calculator';
  static const String? _kFontPkg = null;

  static const IconData backspace =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData equal =
      IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData divide =
      IconData(0xe802, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData minus_slash_plus =
      IconData(0xe803, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData multiply =
      IconData(0xe804, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData percent =
      IconData(0xe805, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData plus =
      IconData(0xe806, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData minus =
      IconData(0xe807, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
