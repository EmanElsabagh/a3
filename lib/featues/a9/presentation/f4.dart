import 'package:flutter/material.dart';
class F4 extends StatelessWidget {
  const F4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/a4images/a2.jpg",width: 150,height: 150,fit: BoxFit.cover,),
            SizedBox(height: 20.0,),
            const Text("Get Your Orders",style: TextStyle(color: Colors.teal,fontSize: 25.0),),
            SizedBox(height: 7.0,),
            const Text("Find your product Find your product Find your \n product Find your product Find your product",style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,),
          ],
        ),
      ),
    );
  }
}
