import 'package:flutter/material.dart';

extension StringExtensions on String {
  String toUpperCaseString() {
    return toUpperCase();
  }
}

extension SizedBoxExtensions on num {
  /// Creates a SizedBox with height
  SizedBox get height => SizedBox(height: toDouble());

  /// Creates a SizedBox with width
  SizedBox get width => SizedBox(width: toDouble());

  /// Creates a SizedBox with both width and height
  SizedBox sized({num? width, num? height}) => SizedBox(
        width: width?.toDouble(),
        height: height?.toDouble(),
      );
}
