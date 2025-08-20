import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/constants/app_images.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';
import 'package:nectar_olnine_grocery/core/widgets/buttons/main_button.dart';
import 'package:nectar_olnine_grocery/core/widgets/inputs/custom_text_field.dart';
import 'package:nectar_olnine_grocery/features/auth/pages/sign_up_screen.dart';
import 'package:nectar_olnine_grocery/functions/navigation.dart';

class PhoneScreen extends StatelessWidget {
  const PhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppImages.phoneScreenPNG),
            SizedBox(height: 50),
            Text(
              "Get your groceries\nwith nectar",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            CustomTextField(
              prefixIcon:Icon(Icons.phone_android_rounded,color: AppColors.primaryColor,),
              hintText: "+20   - - -   - - -   - - -",
              labelText: "Phone number",
              
            ),
            SizedBox(height: 100,),
            MainButton(buttonText: "Continue", onPressed: (){
              pushToWithoutReplacement(context, SignUpScreen());
            })
              
            
          ],
        ),
      ),
    );
  }
}
