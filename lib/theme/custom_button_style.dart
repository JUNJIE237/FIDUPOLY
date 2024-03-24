import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration get gradientPrimaryToLimeDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(31.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 0),
          colors: [
            theme.colorScheme.primary,
            appTheme.lime400,
          ],
        ),
      );
  static BoxDecoration get gradientTealToBlueGrayDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(31.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 0),
          colors: [
            appTheme.teal30001,
            appTheme.blueGray500,
          ],
        ),
      );
  static BoxDecoration get gradientTealToBlueGrayTL31Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(31.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 0),
          colors: [
            appTheme.teal30002,
            appTheme.blueGray900,
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
