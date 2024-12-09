import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/screens/splash_screen/splash_screen.dart';
import 'package:pronounce_go/theme/theme.dart';
import 'package:pronounce_go/util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  Future.delayed(const Duration(seconds: 2), () {
    FlutterNativeSplash.remove(); // Remove splash screen after initialization
  });

  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = createTextTheme(context, "Baloo 2", "Coiny");
    MaterialTheme theme = MaterialTheme(textTheme);

    return GetMaterialApp(
      theme: theme.light(),
      darkTheme: theme.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
