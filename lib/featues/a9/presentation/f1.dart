import 'package:a3/featues/a9/presentation/f2.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:get/get.dart';
//import '/views/utils/colors.dart';
class F1 extends StatefulWidget {
  const F1({super.key});

  @override
  State<F1> createState() => _F1State();
}

class _F1State extends State<F1> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                F2()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/a4images/a9.png",width: 150,height: 150,fit: BoxFit.cover,),
            SizedBox(height: 20.0,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Shop",style: TextStyle(color: Colors.teal,fontSize: 25.0),),
                Text("fuge",style: TextStyle(color: Colors.deepOrange,fontSize: 25.0),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

