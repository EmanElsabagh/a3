import 'package:flutter/material.dart';
class F3 extends StatelessWidget {
  const F3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        actions: [
          TextButton(onPressed: (){}, child: Text("Skip",style: TextStyle(color: Colors.orange),)),
        ],
        elevation: 0.0,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/a4images/a6.jpg",width: 150,height: 150,fit: BoxFit.cover,),
            SizedBox(height: 20.0,),
            Text("Make Payment",style: TextStyle(color: Colors.teal,fontSize: 25.0),),
            SizedBox(height: 7.0,),
            Text("Find your product Find your product Find your product",style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,),
          ],
        ),
      ),
    );
  }
}
