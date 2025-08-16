import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_olnine_grocery/core/constants/app_images.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';
import 'package:nectar_olnine_grocery/core/widgets/buttons/main_button.dart';
import 'package:nectar_olnine_grocery/core/widgets/inputs/custom_text_field.dart';
import 'package:nectar_olnine_grocery/features/auth/pages/location_screen.dart';
import 'package:nectar_olnine_grocery/features/auth/pages/login_screen.dart';
import 'package:nectar_olnine_grocery/features/auth/widgets/auth_header.dart';
import 'package:nectar_olnine_grocery/functions/navigation.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool obsecureText = true;
var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(  
                  children: [
                    SvgPicture.asset(
                      AppImages.appLogoSvg,
                      width: 120,
                      height: 120,
                      placeholderBuilder: (context) => SizedBox(
                        width: 120,
                        height: 120,
                        child: Center(child: CircularProgressIndicator()),
                      ),
                    ),
                    SizedBox(height: 50),
                    AuthHeader(
                      tiltle: "Sign Up",
                      subTitle: "Enter your credentials to continue",
                    ),
                    SizedBox(height: 40),
                    CustomTextField(
                      validator: (value) {
                        if ( value?.isEmpty??true) {
                          return "Invalid Input please, enter a valid username";
                        } else {
                          return null;
                        }},
                      labelText: "Username",
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomTextField(
                       validator: (value) {
                        if ( value?.isEmpty??true) {
                          return "Invalid Input please, enter a valid Email";
                        } else {
                          return null;
                        }

                      },
                      labelText: "Email",
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomTextField(
                      validator: (value){
                        if(value?.isEmpty??true)
                       { return "please,Enter a Valid Password";}
                       else if(value!.length<8){
return "Password must be at least 8 characters";

                       }
                       else{
                        return null;
                       }},
                      obsecureText: obsecureText,
                      labelText: "Password",
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: AppColors.primaryColor,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obsecureText = !obsecureText;
                          });
                        },
                        icon: obsecureText
                            ? Icon(Icons.visibility,color: AppColors.greyColor,)
                            : Icon(Icons.visibility_off, color: AppColors.greyColor),
                      ),
                    ),
                
                    SizedBox(height: 20),
                    termsAndConditions(),
                    MainButton(
                      buttonText: "Sign Up",
                      onPressed: () {
                  if(formKey.currentState?.validate()??false){
                        pushToWithoutReplacement(context, LocationScreen());
                  }
                      },
                    
                    ),
                
                    SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account ?",
                            style: TextStyle(
                              color: AppColors.darkColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: TextButton(
                              onPressed: () {
                                pushToWithReplacement(context, LoginScreen());
                              },
                              child: Text(
                                "Log In",
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  RichText termsAndConditions() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "By continuing you agree to our",
            style: TextStyle(
              color: AppColors.greyColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.all(5)),
              onPressed: () {},
              child: Text(
                "Terms of Service",
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          TextSpan(
            text: "and ",
            style: TextStyle(
              color: AppColors.greyColor,
              fontSize: 14,

              fontWeight: FontWeight.w400,
            ),
          ),

          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
              onPressed: () {},
              child: Text(
                "Privacy Policy",
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
