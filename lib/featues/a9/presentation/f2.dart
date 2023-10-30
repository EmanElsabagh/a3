import 'package:flutter/material.dart';
class F2 extends StatelessWidget {
  const F2({super.key});

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
            Image.asset("assets/images/a4images/a1.jpg",width: 150,height: 150,fit: BoxFit.cover,),
            SizedBox(height: 15.0,),
            Text("Choose Product",style: TextStyle(color: Colors.teal,fontSize: 25.0),),
            SizedBox(height: 7.0,),
            Text("Find your product Find your product Find your product",style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,),
          ],
        ),
      ),
    );
  }
}
