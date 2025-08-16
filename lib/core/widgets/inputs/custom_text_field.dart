import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,this.labelText, this.hintText,this.suffixIcon,this.prefixIcon,this.onChanged,this.obsecureText=false,this.validator});
final String? labelText;
final String? hintText;
final Widget? suffixIcon;
final Widget? prefixIcon;
final bool obsecureText;
final Function(String)? onChanged;
final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecureText,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
    
        label: Text(labelText??""),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText
      ),
      
    );
  }
}
