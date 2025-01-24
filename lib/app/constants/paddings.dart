import 'package:flutter/material.dart';

class AppPaddings {
  static const double small = 5.0;
  static const double medium = 10.0;
  static const double mediumLarge = 15.0;
  static const double large = 20.0;
  static const double none = 0.0;
  EdgeInsets get allPaddingLarge => const EdgeInsets.all(large);
  EdgeInsets get allPaddingMedium => const EdgeInsets.all(large);
  EdgeInsets get allPaddingMediumLarge => const EdgeInsets.all(large);
  EdgeInsets get allPaddingSmall => const EdgeInsets.all(large);

  EdgeInsets get horizontalPaddingMedium =>
      const EdgeInsets.symmetric(horizontal: medium);
  EdgeInsets get horizontalPaddingMediumLarge =>
      const EdgeInsets.symmetric(horizontal: mediumLarge);
  EdgeInsets get horizontalPaddingSmall =>
      const EdgeInsets.symmetric(horizontal: small);
  EdgeInsets get nonePadding => const EdgeInsets.all(none);
  EdgeInsets get verticalPaddingLarge =>
      const EdgeInsets.symmetric(vertical: large);

  EdgeInsets get verticalPaddingMedium =>
      const EdgeInsets.symmetric(vertical: medium);
  EdgeInsets get verticalPaddingMediumLarge =>
      const EdgeInsets.symmetric(vertical: mediumLarge);
  EdgeInsets get verticalPaddingNone =>
      const EdgeInsets.symmetric(vertical: none);
  EdgeInsets get verticalPaddingSmall => EdgeInsets.symmetric(vertical: small);
}
