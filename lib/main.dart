  import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/utils/app_theme.dart';
import 'package:nectar_olnine_grocery/features/auth/pages/splash_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,

      home: const SplashScreen()
    );
  }
}
