import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_olnine_grocery/core/constants/app_images.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';
import 'package:nectar_olnine_grocery/features/auth/pages/login_screen.dart';
import 'package:nectar_olnine_grocery/functions/navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      pushToWithReplacement(context, const LoginScreen());
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: SvgPicture.asset(
          AppImages.appTitleSvg,
          width: 220,
          height: 58,
          placeholderBuilder: (context) => SizedBox(
            width: 220,
            height: 58,
            child: Center(child: CircularProgressIndicator(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
