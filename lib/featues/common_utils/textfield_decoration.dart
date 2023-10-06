
import 'package:flutter/material.dart';

class CommonUtils{

 static InputDecoration textFieldDecoration(String? title, Widget? prefixIcon,  Widget? suffixIcon){
    return InputDecoration(
      hintText: title??'',
      hintStyle: const TextStyle(color: Colors.grey),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(width: 1, color: Colors.white),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(width: 1,color: Colors.white),
      ),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }

}
