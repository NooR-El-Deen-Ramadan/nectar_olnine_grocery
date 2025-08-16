import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_olnine_grocery/core/constants/app_images.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';
import 'package:nectar_olnine_grocery/core/widgets/buttons/main_button.dart';
import 'package:nectar_olnine_grocery/core/widgets/inputs/custom_text_field.dart';
import 'package:nectar_olnine_grocery/features/auth/pages/login_screen.dart';
import 'package:nectar_olnine_grocery/functions/navigation.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppImages.locationIconSvg,
                width: 250,
                height: 170,
              ),
              SizedBox(height: 40),
              Text(
                "Select your Loacation",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              Text(
                "Switch on your location to stay in tune with what’s happening in your area",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.greyColor,
                ),
              ),
              SizedBox(height: 160),
              CustomTextField(labelText: "Address"),
              SizedBox(height: 70),

              MainButton(
                buttonText: "Submit",
                onPressed: () {
                  pushToWithReplacement(context, LoginScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
