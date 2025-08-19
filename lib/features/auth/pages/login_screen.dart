import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_olnine_grocery/core/constants/app_images.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';
import 'package:nectar_olnine_grocery/core/widgets/buttons/main_button.dart';
import 'package:nectar_olnine_grocery/core/widgets/inputs/custom_text_field.dart';
import 'package:nectar_olnine_grocery/features/auth/pages/sign_up_screen.dart';
import 'package:nectar_olnine_grocery/features/auth/widgets/auth_header.dart';
import 'package:nectar_olnine_grocery/features/main/main_screen.dart';
import 'package:nectar_olnine_grocery/functions/navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();

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
                    SvgPicture.asset(AppImages.appLogoSvg),
                    SizedBox(height: 50),
                    AuthHeader(
                      tiltle: "Login",
                      subTitle: "Enter your Email and Password to login",
                    ),
                    SizedBox(height: 60),
                    CustomTextField(
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "Invalid Input please enter a valid Email";
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
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "please , Enter a Valid Password";
                        } else {
                          return null;
                        }
                      },
                      labelText: "Password",
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: AppColors.primaryColor,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: AppColors.greyColor,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(color: AppColors.primaryColor),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    MainButton(
                      buttonText: "Login",
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          pushToWithReplacement(context, MainScreen());
                        }
                      },
                    ),

                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: AppColors.darkColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            pushToWithReplacement(context, SignUpScreen());
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: AppColors.primaryColor),
                          ),
                        ),
                      ],
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
}
