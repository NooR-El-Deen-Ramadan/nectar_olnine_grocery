import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/constants/app_fonts.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';

class AppTheme {

static ThemeData lightTheme = ThemeData(
  fontFamily: AppFonts.poppinFontFamily,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    surfaceTintColor: Colors.transparent,
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 0,
  ),
       inputDecorationTheme: InputDecorationTheme(
labelStyle: TextStyle(color: AppColors.greyColor,fontSize: 16,fontWeight: FontWeight.w600),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.greyColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
      ),

       );
  
}