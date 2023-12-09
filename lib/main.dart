import 'package:flutter/material.dart';
import 'package:roileass/presentation/resources/routes_manager.dart';
import 'package:roileass/presentation/resources/theme_manager.dart';
import 'package:roileass/presentation/screens/splash_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      home: const Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
