import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4284831119),
      surfaceTint: Color(4284831119),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4293516799),
      onPrimaryContainer: Color(4280291399),
      secondary: Color(4284636017),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4293451512),
      onSecondaryContainer: Color(4280162603),
      tertiary: Color(4286468704),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294957539),
      onTertiaryContainer: Color(4281405469),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294834175),
      onSurface: Color(4280097568),
      onSurfaceVariant: Color(4282991950),
      outline: Color(4286215551),
      outlineVariant: Color(4291478735),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281478965),
      inversePrimary: Color(4291804670),
      primaryFixed: Color(4293516799),
      onPrimaryFixed: Color(4280291399),
      primaryFixedDim: Color(4291804670),
      onPrimaryFixedVariant: Color(4283186549),
      secondaryFixed: Color(4293451512),
      onSecondaryFixed: Color(4280162603),
      secondaryFixedDim: Color(4291543772),
      onSecondaryFixedVariant: Color(4283057240),
      tertiaryFixed: Color(4294957539),
      onTertiaryFixed: Color(4281405469),
      tertiaryFixedDim: Color(4293900488),
      onTertiaryFixedVariant: Color(4284693320),
      surfaceDim: Color(4292794592),
      surfaceBright: Color(4294834175),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294505210),
      surfaceContainer: Color(4294110452),
      surfaceContainerHigh: Color(4293715694),
      surfaceContainerHighest: Color(4293320937),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282923377),
      surfaceTint: Color(4284831119),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4286278567),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282794068),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4286083463),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4284430149),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4288046966),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294834175),
      onSurface: Color(4280097568),
      onSurfaceVariant: Color(4282728778),
      outline: Color(4284570983),
      outlineVariant: Color(4286413187),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281478965),
      inversePrimary: Color(4291804670),
      primaryFixed: Color(4286278567),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4284633996),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4286083463),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4284438894),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4288046966),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4286271326),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292794592),
      surfaceBright: Color(4294834175),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294505210),
      surfaceContainer: Color(4294110452),
      surfaceContainerHigh: Color(4293715694),
      surfaceContainerHighest: Color(4293320937),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4280751950),
      surfaceTint: Color(4284831119),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4282923377),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280557362),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4282794068),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281931556),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284430149),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294834175),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280623915),
      outline: Color(4282728778),
      outlineVariant: Color(4282728778),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281478965),
      inversePrimary: Color(4294043903),
      primaryFixed: Color(4282923377),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281475929),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4282794068),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4281281085),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284430149),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282720558),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292794592),
      surfaceBright: Color(4294834175),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294505210),
      surfaceContainer: Color(4294110452),
      surfaceContainerHigh: Color(4293715694),
      surfaceContainerHighest: Color(4293320937),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4291804670),
      surfaceTint: Color(4291804670),
      onPrimary: Color(4281739101),
      primaryContainer: Color(4283186549),
      onPrimaryContainer: Color(4293516799),
      secondary: Color(4291543772),
      onSecondary: Color(4281544001),
      secondaryContainer: Color(4283057240),
      onSecondaryContainer: Color(4293451512),
      tertiary: Color(4293900488),
      onTertiary: Color(4283049266),
      tertiaryContainer: Color(4284693320),
      onTertiaryContainer: Color(4294957539),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279505432),
      onSurface: Color(4293320937),
      onSurfaceVariant: Color(4291478735),
      outline: Color(4287926169),
      outlineVariant: Color(4282991950),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293320937),
      inversePrimary: Color(4284831119),
      primaryFixed: Color(4293516799),
      onPrimaryFixed: Color(4280291399),
      primaryFixedDim: Color(4291804670),
      onPrimaryFixedVariant: Color(4283186549),
      secondaryFixed: Color(4293451512),
      onSecondaryFixed: Color(4280162603),
      secondaryFixedDim: Color(4291543772),
      onSecondaryFixedVariant: Color(4283057240),
      tertiaryFixed: Color(4294957539),
      onTertiaryFixed: Color(4281405469),
      tertiaryFixedDim: Color(4293900488),
      onTertiaryFixedVariant: Color(4284693320),
      surfaceDim: Color(4279505432),
      surfaceBright: Color(4282071102),
      surfaceContainerLowest: Color(4279176467),
      surfaceContainerLow: Color(4280097568),
      surfaceContainer: Color(4280360740),
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
      primary: Color(4292068095),
      surfaceTint: Color(4291804670),
      onPrimary: Color(4279961922),
      primaryContainer: Color(4288186309),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4291872736),
      onSecondary: Color(4279767845),
      secondaryContainer: Color(4287991204),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294229196),
      onTertiary: Color(4281010968),
      tertiaryContainer: Color(4290085778),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279505432),
      onSurface: Color(4294965759),
      onSurfaceVariant: Color(4291741908),
      outline: Color(4289110443),
      outlineVariant: Color(4287005067),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293320937),
      inversePrimary: Color(4283318135),
      primaryFixed: Color(4293516799),
      onPrimaryFixed: Color(4279567165),
      primaryFixedDim: Color(4291804670),
      onPrimaryFixedVariant: Color(4282068323),
      secondaryFixed: Color(4293451512),
      onSecondaryFixed: Color(4279438880),
      secondaryFixedDim: Color(4291543772),
      onSecondaryFixedVariant: Color(4281938759),
      tertiaryFixed: Color(4294957539),
      onTertiaryFixed: Color(4280550931),
      tertiaryFixedDim: Color(4293900488),
      onTertiaryFixedVariant: Color(4283444024),
      surfaceDim: Color(4279505432),
      surfaceBright: Color(4282071102),
      surfaceContainerLowest: Color(4279176467),
      surfaceContainerLow: Color(4280097568),
      surfaceContainer: Color(4280360740),
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
      primary: Color(4294965759),
      surfaceTint: Color(4291804670),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4292068095),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965759),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4291872736),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965753),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294229196),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279505432),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294965759),
      outline: Color(4291741908),
      outlineVariant: Color(4291741908),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293320937),
      inversePrimary: Color(4281278550),
      primaryFixed: Color(4293780223),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4292068095),
      onPrimaryFixedVariant: Color(4279961922),
      secondaryFixed: Color(4293714941),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4291872736),
      onSecondaryFixedVariant: Color(4279767845),
      tertiaryFixed: Color(4294959079),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294229196),
      onTertiaryFixedVariant: Color(4281010968),
      surfaceDim: Color(4279505432),
      surfaceBright: Color(4282071102),
      surfaceContainerLowest: Color(4279176467),
      surfaceContainerLow: Color(4280097568),
      surfaceContainer: Color(4280360740),
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
