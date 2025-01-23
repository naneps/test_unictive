import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff415e91),
      surfaceTint: Color(0xff415e91),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffd7e3ff),
      onPrimaryContainer: Color(0xff284777),
      secondary: Color(0xff39608f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd3e4ff),
      onSecondaryContainer: Color(0xff1d4875),
      tertiary: Color(0xff39608f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffd3e4ff),
      onTertiaryContainer: Color(0xff1e4876),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff4fafb),
      onSurface: Color(0xff161d1d),
      onSurfaceVariant: Color(0xff44474e),
      outline: Color(0xff74777f),
      outlineVariant: Color(0xffc4c6d0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3232),
      inversePrimary: Color(0xffaac7ff),
      primaryFixed: Color(0xffd7e3ff),
      onPrimaryFixed: Color(0xff001b3e),
      primaryFixedDim: Color(0xffaac7ff),
      onPrimaryFixedVariant: Color(0xff284777),
      secondaryFixed: Color(0xffd3e4ff),
      onSecondaryFixed: Color(0xff001c38),
      secondaryFixedDim: Color(0xffa2c9fe),
      onSecondaryFixedVariant: Color(0xff1d4875),
      tertiaryFixed: Color(0xffd3e4ff),
      onTertiaryFixed: Color(0xff001c38),
      tertiaryFixedDim: Color(0xffa3c9fe),
      onTertiaryFixedVariant: Color(0xff1e4876),
      surfaceDim: Color(0xffd5dbdb),
      surfaceBright: Color(0xfff4fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f5),
      surfaceContainer: Color(0xffe9efef),
      surfaceContainerHigh: Color(0xffe3e9e9),
      surfaceContainerHighest: Color(0xffdde4e4),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff143665),
      surfaceTint: Color(0xff415e91),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff506da0),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff023764),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff486f9e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff043764),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff496f9f),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff4fafb),
      onSurface: Color(0xff0c1213),
      onSurfaceVariant: Color(0xff33363e),
      outline: Color(0xff4f525a),
      outlineVariant: Color(0xff6a6d75),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3232),
      inversePrimary: Color(0xffaac7ff),
      primaryFixed: Color(0xff506da0),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff375586),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff486f9e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2e5784),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff496f9f),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2f5685),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc1c8c8),
      surfaceBright: Color(0xfff4fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f5),
      surfaceContainer: Color(0xffe3e9e9),
      surfaceContainerHigh: Color(0xffd8dede),
      surfaceContainerHighest: Color(0xffcdd3d3),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff042b5b),
      surfaceTint: Color(0xff415e91),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2a497a),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff002d54),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff204b78),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002d54),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff214b78),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff4fafb),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff292c33),
      outlineVariant: Color(0xff464951),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3232),
      inversePrimary: Color(0xffaac7ff),
      primaryFixed: Color(0xff2a497a),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff0e3262),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff204b78),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff00345e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff214b78),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff00345f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb4baba),
      surfaceBright: Color(0xfff4fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffecf2f2),
      surfaceContainer: Color(0xffdde4e4),
      surfaceContainerHigh: Color(0xffcfd6d6),
      surfaceContainerHighest: Color(0xffc1c8c8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffaac7ff),
      surfaceTint: Color(0xffaac7ff),
      onPrimary: Color(0xff0b305f),
      primaryContainer: Color(0xff284777),
      onPrimaryContainer: Color(0xffd7e3ff),
      secondary: Color(0xffa2c9fe),
      onSecondary: Color(0xff00325b),
      secondaryContainer: Color(0xff1d4875),
      onSecondaryContainer: Color(0xffd3e4ff),
      tertiary: Color(0xffa3c9fe),
      onTertiary: Color(0xff00315b),
      tertiaryContainer: Color(0xff1e4876),
      onTertiaryContainer: Color(0xffd3e4ff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0e1415),
      onSurface: Color(0xffdde4e4),
      onSurfaceVariant: Color(0xffc4c6d0),
      outline: Color(0xff8e9099),
      outlineVariant: Color(0xff44474e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdde4e4),
      inversePrimary: Color(0xff415e91),
      primaryFixed: Color(0xffd7e3ff),
      onPrimaryFixed: Color(0xff001b3e),
      primaryFixedDim: Color(0xffaac7ff),
      onPrimaryFixedVariant: Color(0xff284777),
      secondaryFixed: Color(0xffd3e4ff),
      onSecondaryFixed: Color(0xff001c38),
      secondaryFixedDim: Color(0xffa2c9fe),
      onSecondaryFixedVariant: Color(0xff1d4875),
      tertiaryFixed: Color(0xffd3e4ff),
      onTertiaryFixed: Color(0xff001c38),
      tertiaryFixedDim: Color(0xffa3c9fe),
      onTertiaryFixedVariant: Color(0xff1e4876),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff343a3b),
      surfaceContainerLowest: Color(0xff090f10),
      surfaceContainerLow: Color(0xff161d1d),
      surfaceContainer: Color(0xff1a2121),
      surfaceContainerHigh: Color(0xff252b2c),
      surfaceContainerHighest: Color(0xff303636),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffcdddff),
      surfaceTint: Color(0xffaac7ff),
      onPrimary: Color(0xff002551),
      primaryContainer: Color(0xff7491c7),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffc8deff),
      onSecondary: Color(0xff002749),
      secondaryContainer: Color(0xff6d93c5),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffc9deff),
      onTertiary: Color(0xff002649),
      tertiaryContainer: Color(0xff6d93c5),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0e1415),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffdadce6),
      outline: Color(0xffafb1bb),
      outlineVariant: Color(0xff8e9099),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdde4e4),
      inversePrimary: Color(0xff294878),
      primaryFixed: Color(0xffd7e3ff),
      onPrimaryFixed: Color(0xff00112b),
      primaryFixedDim: Color(0xffaac7ff),
      onPrimaryFixedVariant: Color(0xff143665),
      secondaryFixed: Color(0xffd3e4ff),
      onSecondaryFixed: Color(0xff001226),
      secondaryFixedDim: Color(0xffa2c9fe),
      onSecondaryFixedVariant: Color(0xff023764),
      tertiaryFixed: Color(0xffd3e4ff),
      onTertiaryFixed: Color(0xff001227),
      tertiaryFixedDim: Color(0xffa3c9fe),
      onTertiaryFixedVariant: Color(0xff043764),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff3f4646),
      surfaceContainerLowest: Color(0xff040809),
      surfaceContainerLow: Color(0xff181f1f),
      surfaceContainer: Color(0xff232929),
      surfaceContainerHigh: Color(0xff2d3434),
      surfaceContainerHighest: Color(0xff383f3f),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffebf0ff),
      surfaceTint: Color(0xffaac7ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffa6c3fc),
      onPrimaryContainer: Color(0xff000b20),
      secondary: Color(0xffe9f0ff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff9fc5fa),
      onSecondaryContainer: Color(0xff000c1c),
      tertiary: Color(0xffe9f0ff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff9fc5fa),
      onTertiaryContainer: Color(0xff000c1d),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff0e1415),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffeeeff9),
      outlineVariant: Color(0xffc0c2cc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdde4e4),
      inversePrimary: Color(0xff294878),
      primaryFixed: Color(0xffd7e3ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffaac7ff),
      onPrimaryFixedVariant: Color(0xff00112b),
      secondaryFixed: Color(0xffd3e4ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffa2c9fe),
      onSecondaryFixedVariant: Color(0xff001226),
      tertiaryFixed: Color(0xffd3e4ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa3c9fe),
      onTertiaryFixedVariant: Color(0xff001227),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff4b5152),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1a2121),
      surfaceContainer: Color(0xff2b3232),
      surfaceContainerHigh: Color(0xff363d3d),
      surfaceContainerHighest: Color(0xff414848),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
