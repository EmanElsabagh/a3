import 'package:flutter/material.dart';

class Gridy extends StatelessWidget {
  const Gridy({super.key, required this.txt, required this.subtxt});
  final String txt;
  final String subtxt;


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 10,
      width: 10,
      color: Colors.white70,
      child: Column(
        children: [
          Text(txt, style: const TextStyle(color: Colors.deepOrange,fontSize: 10.0),),
          Text(subtxt,style: const TextStyle(color: Colors.grey,fontSize: 10.0),),
        ],
      ),
    );
  }
}
