import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4284569232),
      surfaceTint: Color(4284569232),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4293320447),
      onPrimaryContainer: Color(4280095049),
      secondary: Color(4284505201),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4293320697),
      onSecondaryContainer: Color(4280031531),
      tertiary: Color(4286337635),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294957285),
      onTertiaryContainer: Color(4281340192),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294834431),
      onSurface: Color(4280032032),
      onSurfaceVariant: Color(4282926414),
      outline: Color(4286150015),
      outlineVariant: Color(4291413200),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413430),
      inversePrimary: Color(4291477247),
      primaryFixed: Color(4293320447),
      onPrimaryFixed: Color(4280095049),
      primaryFixedDim: Color(4291477247),
      onPrimaryFixedVariant: Color(4282990455),
      secondaryFixed: Color(4293320697),
      onSecondaryFixed: Color(4280031531),
      secondaryFixedDim: Color(4291478492),
      onSecondaryFixedVariant: Color(4282926168),
      tertiaryFixed: Color(4294957285),
      onTertiaryFixed: Color(4281340192),
      tertiaryFixedDim: Color(4293769420),
      onTertiaryFixedVariant: Color(4284627787),
      surfaceDim: Color(4292729056),
      surfaceBright: Color(4294834431),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294439674),
      surfaceContainer: Color(4294044916),
      surfaceContainerHigh: Color(4293650158),
      surfaceContainerHighest: Color(4293321193),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282727282),
      surfaceTint: Color(4284569232),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4286016936),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282662996),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4286018184),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4284364615),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287981690),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294834431),
      onSurface: Color(4280032032),
      onSurfaceVariant: Color(4282663242),
      outline: Color(4284571239),
      outlineVariant: Color(4286413187),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413430),
      inversePrimary: Color(4291477247),
      primaryFixed: Color(4286016936),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4284372110),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4286018184),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4284373358),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287981690),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4286206049),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292729056),
      surfaceBright: Color(4294834431),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294439674),
      surfaceContainer: Color(4294044916),
      surfaceContainerHigh: Color(4293650158),
      surfaceContainerHighest: Color(4293321193),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4280490319),
      surfaceTint: Color(4284569232),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4282727282),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280492082),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4282662996),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281866022),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284364615),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294834431),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280623915),
      outline: Color(4282663242),
      outlineVariant: Color(4282663242),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413430),
      inversePrimary: Color(4293978623),
      primaryFixed: Color(4282727282),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281214043),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4282662996),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4281215549),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284364615),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282655281),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292729056),
      surfaceBright: Color(4294834431),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294439674),
      surfaceContainer: Color(4294044916),
      surfaceContainerHigh: Color(4293650158),
      surfaceContainerHighest: Color(4293321193),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4291477247),
      surfaceTint: Color(4291477247),
      onPrimary: Color(4281477215),
      primaryContainer: Color(4282990455),
      onPrimaryContainer: Color(4293320447),
      secondary: Color(4291478492),
      onSecondary: Color(4281413185),
      secondaryContainer: Color(4282926168),
      onSecondaryContainer: Color(4293320697),
      tertiary: Color(4293769420),
      onTertiary: Color(4282983733),
      tertiaryContainer: Color(4284627787),
      onTertiaryContainer: Color(4294957285),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279505688),
      onSurface: Color(4293321193),
      onSurfaceVariant: Color(4291413200),
      outline: Color(4287860633),
      outlineVariant: Color(4282926414),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293321193),
      inversePrimary: Color(4284569232),
      primaryFixed: Color(4293320447),
      onPrimaryFixed: Color(4280095049),
      primaryFixedDim: Color(4291477247),
      onPrimaryFixedVariant: Color(4282990455),
      secondaryFixed: Color(4293320697),
      onSecondaryFixed: Color(4280031531),
      secondaryFixedDim: Color(4291478492),
      onSecondaryFixedVariant: Color(4282926168),
      tertiaryFixed: Color(4294957285),
      onTertiaryFixed: Color(4281340192),
      tertiaryFixedDim: Color(4293769420),
      onTertiaryFixedVariant: Color(4284627787),
      surfaceDim: Color(4279505688),
      surfaceBright: Color(4282005566),
      surfaceContainerLowest: Color(4279176467),
      surfaceContainerLow: Color(4280032032),
      surfaceContainer: Color(4280295204),
      surfaceContainerHigh: Color(4281018671),
      surfaceContainerHighest: Color(4281742394),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4291740671),
      surfaceTint: Color(4291477247),
      onPrimary: Color(4279700035),
      primaryContainer: Color(4287924678),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4291741664),
      onSecondary: Color(4279702566),
      secondaryContainer: Color(4287860389),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294098128),
      onTertiary: Color(4280945434),
      tertiaryContainer: Color(4289954710),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279505688),
      onSurface: Color(4294900223),
      onSurfaceVariant: Color(4291742164),
      outline: Color(4289044908),
      outlineVariant: Color(4286939532),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293321193),
      inversePrimary: Color(4283056248),
      primaryFixed: Color(4293320447),
      onPrimaryFixed: Color(4279370814),
      primaryFixedDim: Color(4291477247),
      onPrimaryFixedVariant: Color(4281871973),
      secondaryFixed: Color(4293320697),
      onSecondaryFixed: Color(4279373600),
      secondaryFixedDim: Color(4291478492),
      onSecondaryFixedVariant: Color(4281807943),
      tertiaryFixed: Color(4294957285),
      onTertiaryFixed: Color(4280550933),
      tertiaryFixedDim: Color(4293769420),
      onTertiaryFixedVariant: Color(4283378491),
      surfaceDim: Color(4279505688),
      surfaceBright: Color(4282005566),
      surfaceContainerLowest: Color(4279176467),
      surfaceContainerLow: Color(4280032032),
      surfaceContainer: Color(4280295204),
      surfaceContainerHigh: Color(4281018671),
      surfaceContainerHighest: Color(4281742394),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294900223),
      surfaceTint: Color(4291477247),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4291740671),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294900223),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4291741664),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965753),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294098128),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279505688),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294900223),
      outline: Color(4291742164),
      outlineVariant: Color(4291742164),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293321193),
      inversePrimary: Color(4281016664),
      primaryFixed: Color(4293583871),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4291740671),
      onPrimaryFixedVariant: Color(4279700035),
      secondaryFixed: Color(4293583869),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4291741664),
      onSecondaryFixedVariant: Color(4279702566),
      tertiaryFixed: Color(4294959081),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294098128),
      onTertiaryFixedVariant: Color(4280945434),
      surfaceDim: Color(4279505688),
      surfaceBright: Color(4282005566),
      surfaceContainerLowest: Color(4279176467),
      surfaceContainerLow: Color(4280032032),
      surfaceContainer: Color(4280295204),
      surfaceContainerHigh: Color(4281018671),
      surfaceContainerHighest: Color(4281742394),
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
     scaffoldBackgroundColor: colorScheme.background,
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