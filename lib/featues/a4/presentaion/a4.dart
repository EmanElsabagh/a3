import 'package:flutter/material.dart';


class A4 extends StatefulWidget {
  const A4({super.key});

  @override
  State<A4> createState() => _A4State();
}

class _A4State extends State<A4> with TickerProviderStateMixin{
  double? width ;
  double? height;
  TabController? tabController;
  List<Widget> listView=[];
  List<Widget> tabListView=[];
  List<String> tabStringListView=[
    "Offer",
    "Burgers",
    "Pizza",
    "Meals",
    "Chicken",
    "beef",
    "Fries",
    "Drinks"
  ];
  @override
  void initState() {
    tabController=TabController(length: 8, vsync: this);
    for(int i=0; i<=8; i++){
      listView.add(ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (context,i){
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                          borderRadius:const BorderRadius.all(Radius.circular(16)),
                          child: Image.asset("assets/images/a4images/a${(i+1).toString()}.jpg",height: 80,width: 80,fit: BoxFit.cover,)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Item Name${i+1}",style: const TextStyle(fontWeight: FontWeight.bold),),
                            const SizedBox(height: 2.0,),
                            SizedBox(
                              width:200,
                              child: Text("lunch, dinner, breakfast, lunch, dinner, breakfast, lunch, dinner, breakfast,${i+1}",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,),
                            ),
                            Row(
                              children: [
                                Text("\$5.55${i+1}",style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                Text(" \$6.55${i+1}",style: const TextStyle(decoration: TextDecoration.lineThrough),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.favorite_outline,color: Colors.grey,),
                      Icon(Icons.add,color: Colors.black,),
                    ],
                  ),
                ],
              ),
            ),

          );
        },
      ));
    }
    for(int i=0; i<=7; i++){
      tabListView.add(Tab(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(tabStringListView[i],style: const TextStyle(color: Colors.grey),),
          if(i==tabController?.index)
            const Icon(Icons.circle,size: 10,color: Colors.grey,)
        ],
      ),));
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   double width = MediaQuery.of(context).size.width;
   double height = MediaQuery.of(context).size.height;
   return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset("assets/images/a4images/a1.jpg"),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("welcome to our Restaurant", style: TextStyle(color: Colors.white, fontSize: 20),),
                  ],//فيه مشكله الكلمه مش بتبقي في ال center
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(width: 2.0,color: Colors.white)
              ),
              padding: const EdgeInsets.all(2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/a4images/a9.png", width: 50,height: 50,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mc Donald\'s",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                          Text(" American Cuntity, fast food", style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                        child: Icon(Icons.favorite_outlined,color: Colors.deepOrange,),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text("daily time: ",style: TextStyle(color: Colors.grey),),
                      Text("3.30 am to 11.00 pm",style: TextStyle(color: Colors.orange),)
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.star,color: Colors.deepOrange,),
                      Text("4.9",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                      Text(" 200+ brunches",style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.location_on,color: Colors.deepOrange,),
                      Text("Location",style: TextStyle(color: Colors.black),),
                    ],
                  ),
                  const SizedBox(height: 15.0,),
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0),),
                    elevation: 3.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.black,
                      ),
                      child:TabBar(
                        indicator: BoxDecoration(//ده بيعملي لون لما اضغط ع حاجه منه
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white,
                        ),
                        controller: tabController,
                        isScrollable: true,
                        labelPadding: const EdgeInsets.symmetric(horizontal: 30.0),
                        tabs:tabListView
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height*0.50,
                    child:TabBarView(
                      controller: tabController,
                      children: listView
                    ) ,
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

