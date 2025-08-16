import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/utils/app_theme.dart';
// import 'package:nectar_olnine_grocery/features/home/pages/home_screen.dart';
import 'package:nectar_olnine_grocery/features/home/pages/search_screen.dart';
// import 'package:nectar_olnine_grocery/features/home/pages/cart_screen.dart';
// import 'package:nectar_olnine_grocery/features/auth/pages/splash_screen.dart';
// import 'package:nectar_olnine_grocery/features/home/pages/cart_screen.dart';
// import 'package:nectar_olnine_grocery/features/home/pages/cart_screen.dart';
// import 'package:nectar_olnine_grocery/features/home/pages/favourite_screen.dart';
//import 'package:nectar_olnine_grocery/features/auth/pages/splash_screen.dart';
// import 'package:nectar_olnine_grocery/features/home/pages/favourite_screen.dart';
// import 'package:nectar_olnine_grocery/features/home/pages/profile_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: AppTheme.LightTheme
      ,
      debugShowCheckedModeBanner: false,
      home: const SearchScreen  (),
    );
  }
}
