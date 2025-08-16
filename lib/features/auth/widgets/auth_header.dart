import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';



class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.tiltle,
    required this.subTitle,
  });

final String tiltle;
final String subTitle; 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tiltle,style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
          SizedBox(height: 16),
          Text(subTitle,style: TextStyle(color: AppColors.greyColor,fontSize: 16,fontWeight: FontWeight.w400),),
          
        ],
      ),
    );
  }
}
