import 'package:flutter/material.dart';

pushToWithReplacement(BuildContext context, Widget screen) {
  
 
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}

pushToWithoutReplacement(BuildContext context, Widget screen) {
  
 
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}



