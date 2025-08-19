import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/constants/app_images.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';

class GategoryModel {
  final String image;
  final String name;
  final Color cardColor;
  final Color cardStrokeColor;
  final double cardObesety = 0.3;

  GategoryModel({
    required this.cardStrokeColor,
    required this.image,
    required this.name,
    required this.cardColor,
  });
}

final List<GategoryModel> categories = [
  GategoryModel(
    name: "Fresh Freuits and Vegtables",
    image: AppImages.vegtablesPNG,
    cardColor: AppColors.primaryColor.withValues(alpha: 0.2),
    cardStrokeColor: AppColors.primaryColor.withValues(alpha: 0.7),
  ),
  GategoryModel(
    cardStrokeColor: AppColors.diaryCardColor.withValues(alpha: 0.7),
    name: "Diaries and Eggs",
    image: AppImages.diariesPNG,
    cardColor: AppColors.diaryCardColor.withValues(alpha: 0.2),
  ),
  GategoryModel(
    cardStrokeColor: AppColors.backeryCardColor.withValues(alpha: 0.7),
    name: "Bakeries and Snacks",
    image: AppImages.bakeryPNG,
    cardColor: AppColors.backeryCardColor.withValues(alpha: 0.2),
  ),
  GategoryModel(
    cardStrokeColor: AppColors.meatCardColor.withValues(alpha: 0.7),
    name: "Meat and Fish",
    image: AppImages.meatPNG,
    cardColor: AppColors.meatCardColor.withValues(alpha: 0.2),
  ),
  GategoryModel(
    cardStrokeColor: AppColors.oilCarddColor.withValues(alpha: 0.7),
    name: "Cooking Oils and Ghee",
    image: AppImages.oilsPNG,
    cardColor: AppColors.oilCarddColor.withValues(alpha: 0.2),
  ),
  GategoryModel(
    cardStrokeColor: AppColors.bevrageCarddColor.withValues(alpha: 0.7),
    name: "Beverages",
    image: AppImages.drinksPNG,
    cardColor: AppColors.bevrageCarddColor.withValues(alpha: 0.2),
  ),
];
