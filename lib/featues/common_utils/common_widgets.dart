
import 'package:flutter/material.dart';

class CommonUtils{

 static InputDecoration textFieldDecoration(String? title, Widget? prefixIcon,  Widget? suffixIcon){
    return InputDecoration(
      hintText: title??'',
      labelText: title??'',
      hintStyle: const TextStyle(color: Colors.grey),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(width: 1, color: Colors.white),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(width: 1,color: Colors.white),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(width: 1,color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(width: 1,color: Colors.red),
      ),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }


  static InkWell customButton({required String title, Function()? onTap}){
   return InkWell(
     onTap: (){
       onTap==null?(){}:onTap();
       },
     child: Container(
       padding: const EdgeInsets.all(10),
       decoration: BoxDecoration(
         color: Colors.blue,
         border: Border.all(width: 2, color: Colors.blue),
         borderRadius: const BorderRadius.all(Radius.circular(16)),
       ),
       child: Center(
           child: Text(title,style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)
       ),
     ),
   );
  }

}
