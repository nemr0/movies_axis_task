import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff266489),
      surfaceTint: Color(0xff266489),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffc9e6ff),
      onPrimaryContainer: Color(0xff004b6f),
      secondary: Color(0xff106682),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffbde9ff),
      onSecondaryContainer: Color(0xff004d64),
      tertiary: Color(0xff2d6a44),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffb1f1c1),
      onTertiaryContainer: Color(0xff11512e),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      onSurfaceVariant: Color(0xff41474d),
      outline: Color(0xff72787e),
      outlineVariant: Color(0xffc1c7ce),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xff95cdf7),
      primaryFixed: Color(0xffc9e6ff),
      onPrimaryFixed: Color(0xff001e2f),
      primaryFixedDim: Color(0xff95cdf7),
      onPrimaryFixedVariant: Color(0xff004b6f),
      secondaryFixed: Color(0xffbde9ff),
      onSecondaryFixed: Color(0xff001f2a),
      secondaryFixedDim: Color(0xff8bd0ef),
      onSecondaryFixedVariant: Color(0xff004d64),
      tertiaryFixed: Color(0xffb1f1c1),
      onTertiaryFixed: Color(0xff00210e),
      tertiaryFixedDim: Color(0xff96d5a7),
      onTertiaryFixedVariant: Color(0xff11512e),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe5e8ed),
      surfaceContainerHighest: Color(0xffe0e3e8),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003a57),
      surfaceTint: Color(0xff266489),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff387299),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff003b4d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff297591),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003f20),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff3d7952),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff0e1215),
      onSurfaceVariant: Color(0xff31373c),
      outline: Color(0xff4d5359),
      outlineVariant: Color(0xff686e74),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xff95cdf7),
      primaryFixed: Color(0xff387299),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff195a7f),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff297591),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff005c76),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff3d7952),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff23603b),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc3c7cc),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffe5e8ed),
      surfaceContainerHigh: Color(0xffdadde2),
      surfaceContainerHighest: Color(0xffcfd2d7),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002f48),
      surfaceTint: Color(0xff266489),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004e73),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff003040),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff005067),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff00341a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff145430),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff272d32),
      outlineVariant: Color(0xff444a50),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xff95cdf7),
      primaryFixed: Color(0xff004e73),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003651),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff005067),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff003749),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff145430),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003b1e),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb6b9be),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeef1f6),
      surfaceContainer: Color(0xffe0e3e8),
      surfaceContainerHigh: Color(0xffd1d5da),
      surfaceContainerHighest: Color(0xffc3c7cc),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff95cdf7),
      surfaceTint: Color(0xff95cdf7),
      onPrimary: Color(0xff00344e),
      primaryContainer: Color(0xff004b6f),
      onPrimaryContainer: Color(0xffc9e6ff),
      secondary: Color(0xff8bd0ef),
      onSecondary: Color(0xff003546),
      secondaryContainer: Color(0xff004d64),
      onSecondaryContainer: Color(0xffbde9ff),
      tertiary: Color(0xff96d5a7),
      onTertiary: Color(0xff00391c),
      tertiaryContainer: Color(0xff11512e),
      onTertiaryContainer: Color(0xffb1f1c1),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff101417),
      onSurface: Color(0xffe0e3e8),
      onSurfaceVariant: Color(0xffc1c7ce),
      outline: Color(0xff8b9198),
      outlineVariant: Color(0xff41474d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e3e8),
      inversePrimary: Color(0xff266489),
      primaryFixed: Color(0xffc9e6ff),
      onPrimaryFixed: Color(0xff001e2f),
      primaryFixedDim: Color(0xff95cdf7),
      onPrimaryFixedVariant: Color(0xff004b6f),
      secondaryFixed: Color(0xffbde9ff),
      onSecondaryFixed: Color(0xff001f2a),
      secondaryFixedDim: Color(0xff8bd0ef),
      onSecondaryFixedVariant: Color(0xff004d64),
      tertiaryFixed: Color(0xffb1f1c1),
      onTertiaryFixed: Color(0xff00210e),
      tertiaryFixedDim: Color(0xff96d5a7),
      onTertiaryFixedVariant: Color(0xff11512e),
      surfaceDim: Color(0xff101417),
      surfaceBright: Color(0xff363a3e),
      surfaceContainerLowest: Color(0xff0b0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff262a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffbde1ff),
      surfaceTint: Color(0xff95cdf7),
      onPrimary: Color(0xff00283e),
      primaryContainer: Color(0xff5f96bf),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfface4ff),
      onSecondary: Color(0xff002937),
      secondaryContainer: Color(0xff5399b7),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffabebbc),
      onTertiary: Color(0xff002d15),
      tertiaryContainer: Color(0xff619e74),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101417),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd7dde4),
      outline: Color(0xffadb2b9),
      outlineVariant: Color(0xff8b9198),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e3e8),
      inversePrimary: Color(0xff004d71),
      primaryFixed: Color(0xffc9e6ff),
      onPrimaryFixed: Color(0xff001320),
      primaryFixedDim: Color(0xff95cdf7),
      onPrimaryFixedVariant: Color(0xff003a57),
      secondaryFixed: Color(0xffbde9ff),
      onSecondaryFixed: Color(0xff00131c),
      secondaryFixedDim: Color(0xff8bd0ef),
      onSecondaryFixedVariant: Color(0xff003b4d),
      tertiaryFixed: Color(0xffb1f1c1),
      onTertiaryFixed: Color(0xff001507),
      tertiaryFixedDim: Color(0xff96d5a7),
      onTertiaryFixedVariant: Color(0xff003f20),
      surfaceDim: Color(0xff101417),
      surfaceBright: Color(0xff414549),
      surfaceContainerLowest: Color(0xff05080b),
      surfaceContainerLow: Color(0xff1a1e22),
      surfaceContainer: Color(0xff24282c),
      surfaceContainerHigh: Color(0xff2f3337),
      surfaceContainerHighest: Color(0xff3a3e42),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffe4f2ff),
      surfaceTint: Color(0xff95cdf7),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff91c9f3),
      onPrimaryContainer: Color(0xff000d17),
      secondary: Color(0xffdef3ff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff87cceb),
      onSecondaryContainer: Color(0xff000d14),
      tertiary: Color(0xffbeffcf),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff92d1a3),
      onTertiaryContainer: Color(0xff000f04),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff101417),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffebf0f8),
      outlineVariant: Color(0xffbdc3ca),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e3e8),
      inversePrimary: Color(0xff004d71),
      primaryFixed: Color(0xffc9e6ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff95cdf7),
      onPrimaryFixedVariant: Color(0xff001320),
      secondaryFixed: Color(0xffbde9ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff8bd0ef),
      onSecondaryFixedVariant: Color(0xff00131c),
      tertiaryFixed: Color(0xffb1f1c1),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff96d5a7),
      onTertiaryFixedVariant: Color(0xff001507),
      surfaceDim: Color(0xff101417),
      surfaceBright: Color(0xff4c5055),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1c2024),
      surfaceContainer: Color(0xff2d3135),
      surfaceContainerHigh: Color(0xff383c40),
      surfaceContainerHighest: Color(0xff43474b),
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


  List<ExtendedColor> get extendedColors => [
  ];
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
