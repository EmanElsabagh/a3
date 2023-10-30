import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class CardDataa10{
  String txt1;
  String txt2;
  String txt3;
  String txt4;
  String image;
  CardDataa10(this.image,this.txt1,this.txt2,this.txt3,this.txt4);
}
List <CardDataa10> contents=[
  CardDataa10("assets/images/a4images/a5.jpg", "\$125", "\$199.00", "Smart Watch", "4.5"),
  CardDataa10("assets/images/a4images/a5.jpg", "\$125", "\$199.00", "Smart Watch", "4.5"),
];
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white10,
        leading: const Icon(Icons.search_rounded,color: Colors.grey,),
        actions: const [
          Icon(Icons.add_alert,color: Colors.grey,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              children: [
                CarouselSlider(
                    items: [
                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Image.asset("assets/images/a4images/a9.png",fit: BoxFit.cover,),
                      ),
                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Image.asset("assets/images/a4images/a9.png",fit: BoxFit.cover,),
                      ),
                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Image.asset("assets/images/a4images/a9.png",fit: BoxFit.cover,),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 100.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 10 / 5,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      //autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                     ),

                ),
              ],
            ),
            const Text("New Arrival",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            Container(),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Exclusive deals",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
                SizedBox(height: 7.0,),
                TextButton(onPressed: (){}, child: Text("View all",style: TextStyle(color: Colors.grey),))
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("New Arrival",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
                SizedBox(height: 7.0,),
                TextButton(onPressed: (){}, child: Text("View all",style: TextStyle(color: Colors.grey),))
              ],
            ),
            SizedBox(height: 10.0,),

          ],
        ),
      ),
    );
  }
}
