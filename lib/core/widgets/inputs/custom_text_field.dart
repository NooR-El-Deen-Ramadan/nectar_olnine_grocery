import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({
  super.key,this.labelText, this.hintText,this.suffixIcon,this.prefixIcon,this.onChanged,this.obsecureText=false,this.validator,
  this.enableSuggestions,
  this.autocorrect,
  this.keyboardType,
  this.autofillHints,
});
final String? labelText;
final String? hintText;
final Widget? suffixIcon;
final Widget? prefixIcon;
final bool obsecureText;
final Function(String)? onChanged;
final String? Function(String?)? validator;
final bool? enableSuggestions;
final bool? autocorrect;
final TextInputType? keyboardType;
final Iterable<String>? autofillHints;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecureText,
      enableSuggestions: enableSuggestions ?? !obsecureText,
      autocorrect: autocorrect ?? !obsecureText,
      keyboardType: keyboardType,
      autofillHints: autofillHints,
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
