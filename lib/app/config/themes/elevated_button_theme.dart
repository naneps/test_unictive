import 'package:flutter/material.dart';

class ElevatedButtonThemes {
  ColorScheme colorScheme;
  TextTheme textTheme;
  ElevatedButtonThemes({required this.colorScheme, required this.textTheme});

  ElevatedButtonThemeData theme() => ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith(
            (states) => colorScheme.primary,
          ),
          foregroundColor: WidgetStateProperty.resolveWith(
            (states) => colorScheme.onPrimary,
          ),
          textStyle: WidgetStateProperty.resolveWith(
            (states) => textTheme.labelLarge,
          ),
          shape: WidgetStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      );
}
