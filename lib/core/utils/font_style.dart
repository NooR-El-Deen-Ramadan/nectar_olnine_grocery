import 'package:flutter/widgets.dart';
import 'package:nectar_olnine_grocery/core/utils/app_colors.dart';

class AppFontStyle {

 static TextStyle getHeaders({Color? fontColor, FontWeight? fontWeight, double? fontSize}){
return TextStyle(
fontSize:fontSize?? 24,
fontWeight: fontWeight?? FontWeight.bold,
color:fontColor?? AppColors.darkColor,
);
}

static TextStyle getSubHeaders({Color? fontColor, FontWeight? fontWeight, double? fontSize}){
return TextStyle(
fontSize: fontSize?? 20,
fontWeight: fontWeight?? FontWeight.w600,
color:fontColor?? AppColors.darkColor,
);
}

static TextStyle getBodyText({Color? fontColor, FontWeight? fontWeight, double? fontSize}){
return TextStyle(
fontSize:fontSize?? 16,
fontWeight: fontWeight?? FontWeight.normal,
color:fontColor?? AppColors.greyColor,
);
}


}