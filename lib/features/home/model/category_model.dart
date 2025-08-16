import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/constants/app_images.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';

class GategoryModel {
  final String image;
  final String name;
  final Color cardColor;


  GategoryModel({
    required this.image,
    required this.name,
    required this.cardColor
   
  });
}

final List<GategoryModel> categories = [
  GategoryModel(name: "Fresh Freuits and Vegtables", image: AppImages.vegtablesPNG, cardColor: AppColors.vegtablesCardColor),
  GategoryModel(name: "Diaries and Eggs", image: AppImages.diariesPNG, cardColor: AppColors.diaryCardColor),
  GategoryModel(name: "Bakeries and Snacks", image: AppImages.bakeryPNG, cardColor: AppColors.backeryCardColor),
  GategoryModel(name: "Meat and Fish", image: AppImages.meatPNG, cardColor: AppColors.meatCardColor),
  GategoryModel(name: "Cooking Oils and Ghee", image: AppImages.oilsPNG, cardColor: AppColors.oilCarddColor),
  GategoryModel(name: "Beverages", image: AppImages.drinksPNG, cardColor: AppColors.bevrageCarddColor),

];
