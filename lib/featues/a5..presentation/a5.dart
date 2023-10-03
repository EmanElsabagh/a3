import 'package:flutter/material.dart';
class A5 extends StatefulWidget {
  const A5({super.key});

  @override
  State<A5> createState() => _A5State();
}

class _A5State extends State<A5> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Wishlist",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios_new,color: Colors.black,),
        actions: const [
          Row(
            children: [
              Icon(Icons.share,color: Colors.blue,),
              Text("Sharing",style: TextStyle(color: Colors.blue),),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: GridView.count(
          shrinkWrap: true,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            cardss("assets/images/a4images/a5.jpg", "Casual Trendy", "\$300.00", "4.2"),
            cardss("assets/images/a4images/a5.jpg", "Casual Trendy", "\$300.00", "4.2"),
            cardss("assets/images/a4images/a5.jpg", "Casual Trendy", "\$300.00", "4.2"),
            cardss("assets/images/a4images/a5.jpg", "Casual Trendy", "\$300.00", "4.2"),
            cardss("assets/images/a4images/a5.jpg", "Casual Trendy", "\$300.00", "4.2"),
            cardss("assets/images/a4images/a5.jpg", "Casual Trendy", "\$300.00", "4.2"),
            cardss("assets/images/a4images/a5.jpg", "Casual Trendy", "\$300.00", "4.2"),
            cardss("assets/images/a4images/a5.jpg", "Casual Trendy", "\$300.00", "4.2"),
          ],
        ),
      ),
    );
  }
}
Widget cardss(image,txt1,txt2,txt3){
  return Container(
    child: Column(
      children: [
        Stack(
          children: [
            Image.asset(image,width: 200,height: 150),
            Container(
              alignment: Alignment.topRight,
              child: IconButton(onPressed: (){},icon: Icon(Icons.favorite_outlined,color: Colors.red,),),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(txt1),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(txt2,style: TextStyle(color: Colors.blue),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.star,color: Colors.yellowAccent,),
                Text(txt3),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}











