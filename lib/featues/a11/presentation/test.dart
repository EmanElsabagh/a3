import 'package:flutter/material.dart';
class Mostaqel extends StatefulWidget {
  const Mostaqel({super.key});

  @override
  State<Mostaqel> createState() => _MostaqelState();
}

class _MostaqelState extends State<Mostaqel> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController tabController=TabController(length: 4, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading:
          const Icon(Icons.arrow_back_ios_new_sharp,color: Colors.white,),
        actions:const[
          Icon(Icons.shopping_cart_checkout,color: Colors.white,),
           Icon(Icons.search_rounded,color: Colors.white,),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Card(
                color: Colors.white10,
                elevation: 0.0,
                child: Container(
                  child: TabBar(
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.pink,
                    ),
                    controller: tabController,
                    isScrollable: true,
                    labelPadding: EdgeInsets.symmetric(horizontal: 30),
                    tabs:const  [
                      Tab(child: Text("All",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),),
                      Tab(child: Text("Offers",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),),
                      Tab(child: Text("Revallies",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),),
                      Tab(child: Text("Sales",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),),
                    ],
                  ),
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: [
                  GridItems("assets/images/a4images/im3.jpg", "\$250", "Nike Mag 2016", "New Arrival"),
                  GridItems("assets/images/a4images/im2.jpg", "\$250", "Nike Mag 2016", "New Arrival"),
                  GridItems("assets/images/a4images/im2.jpg", "\$250", "Nike Mag 2016", "New Arrival"),
                  GridItems("assets/images/a4images/im3.jpg", "\$250", "Nike Mag 2016", "New Arrival"),
                  GridItems("assets/images/a4images/im3.jpg", "\$250", "Nike Mag 2016", "New Arrival"),
                  GridItems("assets/images/a4images/im2.jpg", "\$250", "Nike Mag 2016", "New Arrival"),
                  GridItems("assets/images/a4images/im2.jpg", "\$250", "Nike Mag 2016", "New Arrival"),
                  GridItems("assets/images/a4images/im3.jpg", "\$250", "Nike Mag 2016", "New Arrival"),
                  GridItems("assets/images/a4images/im3.jpg", "\$250", "Nike Mag 2016", "New Arrival"),
                  GridItems("assets/images/a4images/im2.jpg", "\$250", "Nike Mag 2016", "New Arrival"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Widget GridItems(image,txt1,txt2,txt3){
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    color: Colors.white70,
    child: Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(image,width: 200,height: 120,fit: BoxFit.cover,)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.favorite,color: Colors.grey,),
                  ],
                ),
                Container(
                  color: Colors.purple,
                  child: Text(txt1),
                ),
              ],
            ),
          ],
        ),
        Text(txt2,style: const TextStyle(fontWeight: FontWeight.bold),),
        Text(txt3,style: const TextStyle(color: Colors.grey),),
      ],
    ),
  );
}
