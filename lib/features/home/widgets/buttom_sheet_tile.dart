import 'package:flutter/material.dart';

class ButtomSheetTile extends StatelessWidget {
   ButtomSheetTile({
    super.key,
    required this.leadingText,
    
     this.trailingWidget,
  });

  final String leadingText;
   Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          leadingText,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Spacer(),
        trailingWidget ?? SizedBox(),
        
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right_outlined)),
      ],
    );
  }
}
