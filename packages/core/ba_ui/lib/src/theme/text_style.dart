import 'package:ba_ui/src/theme/color_values.dart';
import 'package:ba_ui/src/theme/font_size_values.dart';
import 'package:flutter/rendering.dart';

class BaTextStyle {
  BaTextStyle._();

  static const TextStyle whiteBold = TextStyle(
    fontSize: FontSizeValues.xxl,
    fontWeight: FontWeight.bold,
    color: BaColorValues.whiteText,
  );

  static const TextStyle whiteLightSm = TextStyle(
    fontSize: FontSizeValues.sm,
    fontWeight: FontWeight.w300,
    color: BaColorValues.whiteText,
    letterSpacing: 1,
  );

  static const TextStyle blackBoldXxxl = TextStyle(
    fontSize: FontSizeValues.xxxl,
    fontWeight: FontWeight.bold,
    color: BaColorValues.blackText,
  );

  static const TextStyle blackNormalMd = TextStyle(
    fontSize: FontSizeValues.md,
    fontWeight: FontWeight.w400,
    color: BaColorValues.blackText,
  );

  static const TextStyle blueNormalMd = TextStyle(
    fontSize: FontSizeValues.md,
    fontWeight: FontWeight.w500,
    color: BaColorValues.blueText,
  );

  static const TextStyle blackBoldlXl = TextStyle(
    fontSize: FontSizeValues.xl,
    fontWeight: FontWeight.bold,
    color: BaColorValues.blackText,
  );
}
