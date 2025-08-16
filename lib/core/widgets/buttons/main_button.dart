import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.buttonText,
    this.width,
    this.height,
    required this.onPressed,
  });
  final String buttonText;
  final double? width;
  final double? height;
  final Function()? onPressed;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        onPressed: 
          onPressed
        ,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
