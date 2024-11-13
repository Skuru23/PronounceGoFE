import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/screens/splash_screen/splash_screen.dart';
import 'package:pronounce_go/theme/theme.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  Future.delayed(const Duration(seconds: 2), () {
    FlutterNativeSplash.remove(); // Remove splash screen after initialization
  });

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  final MaterialTheme theme = const MaterialTheme(TextTheme());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme.light(),
      darkTheme: theme.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Vo dich roi"),
    );
  }
}
