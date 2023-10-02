
import 'package:flutter/material.dart';

import 'featues/a4/presentaion/a4.dart';
void main() {
  runApp(const Myhomepage());
}

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: A4(),
    );
  }
}

















