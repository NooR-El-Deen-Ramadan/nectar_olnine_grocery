import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nectar_olnine_grocery/core/constants/app_images.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';
import 'package:nectar_olnine_grocery/core/widgets/buttons/main_button.dart';
import 'package:nectar_olnine_grocery/features/main/main_screen.dart';
import 'package:nectar_olnine_grocery/functions/navigation.dart';

class PlacedOrderScreen extends StatelessWidget {
  const PlacedOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.successPNG, 
              height: 300,
              width: 400,
            ),
            Gap(20),
            Text("Your Order has been\naccepted",
            textAlign: TextAlign.center,
            style: TextStyle(
              
              fontSize: 28,
              fontWeight: FontWeight.w600,
            )),
            Gap(20),
            Text("Your items has been placed and is on it’s way to being processed",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: AppColors.greyColor,
            )),
            Gap(50),
            MainButton(buttonText: "Back To Home", onPressed: () {
              pushAndRemoveUntil(context, MainScreen());
            })
          ],
        ),
      ),
    );
  }
}