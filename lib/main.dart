import 'package:a3/a4.dart';
import 'package:flutter/material.dart';
final List<String> li = <String>['A', 'B', 'C', 'D', 'E', 'F'];
void main() {
  runApp(Myhomepage());
}

class Myhomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: A4(),
    );
  }
}
class A4 extends StatefulWidget {
  const A4({super.key});

  @override
  State<A4> createState() => _A4State();
}

class _A4State extends State<A4> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TabController tabController=TabController(length: 8, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset("assets/images/a4images/a1.jpg"),
               const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("welcome to our Restaurant"),
                  ],//فيه مشكله الكلمه مش بتبقي في ال center
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(width: 2.0,color: Colors.white)
              ),
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/a4images/a9.png", width: 50,height: 50,),
                     const Column(
                        children: [
                          Text("Mc Donalds",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                          Text(" American Cuntity, fast food", style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                      const Padding(
                        padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
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
                  SizedBox(height: 15.0,),
                  Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
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
                        labelPadding: EdgeInsets.symmetric(horizontal: 30.0),
                        tabs: [
                          Tab(child: Text("Offer",style: TextStyle(color: Colors.grey),),),
                          Tab(child: Text("Burgers",style: TextStyle(color: Colors.grey),),),
                          Tab(child: Text("Pizza",style: TextStyle(color: Colors.grey),),),
                          Tab(child: Text("Meals",style: TextStyle(color: Colors.grey),),),
                          Tab(child: Text("Chicken",style: TextStyle(color: Colors.grey),),),
                          Tab(child: Text("beef",style: TextStyle(color: Colors.grey),),),
                          Tab(child: Text("Fries",style: TextStyle(color: Colors.grey),),),
                          Tab(child: Text("Drinks",style: TextStyle(color: Colors.grey),),),
                        ],
                      ),
                    ),
                  ),
                 Container(
                   height: height*0.50,
                      child:TabBarView(
                        controller: tabController,
                        children: [
                          ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                              itemCount: 10,
                              itemBuilder: (context,i){
                              return Card(
                                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100.0),
                                                color: Colors.black,
                                              ),
                                              child: Image.asset("assets/images/a4images/a2.jpg",height: 80,width: 80,fit: BoxFit.cover,)),
                                          Column(
                                            children: [
                                              Text("Item Name${i+1}",style: TextStyle(fontWeight: FontWeight.bold),),
                                              SizedBox(height: 2.0,),
                                              Text("lunch, dinner, breakfast,${i+1}"),
                                              Row(
                                                children: [
                                                  Text("\$5.55${i+1}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                                  Text(" \$6.55${i+1}",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                                  SizedBox(width: 100,),
                                                  Icon(Icons.add,color: Colors.black,)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Icon(Icons.favorite_outline,color: Colors.grey,),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                /*Container(
                                  leading: Column(
                                    children: [
                                      Icon(Icons.favorite_outline,color: Colors.grey,),
                                      Icon(Icons.add,color: Colors.black,),
                                    ],
                                  ),
                                  title: Text("Item Name ${i+1}",style: TextStyle(fontWeight: FontWeight.bold),),
                                  subtitle: Column(
                                    children: [
                                      Text("lunch, dinner, breakfast, everyday, order now yalla,${i+1}"),
                                      Row(
                                        children: [
                                          Text("\$5.55${i+1} ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                          Text("\$6.55${i+1}",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),*/
                              );
                              },
                          ),
                          ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context,i){
                              return Card(
                                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100.0),
                                                color: Colors.black,
                                              ),
                                              child: Image.asset("assets/images/a4images/a3.jpg",height: 80,width: 80,fit: BoxFit.cover,)),
                                          Column(
                                            children: [
                                              Text("Item Name${i+1}",style: TextStyle(fontWeight: FontWeight.bold),),
                                              SizedBox(height: 2.0,),
                                              Text("lunch, dinner, breakfast,${i+1}"),
                                              Row(
                                                children: [
                                                  Text("\$5.55${i+1}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                                  Text(" \$6.55${i+1}",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                                  SizedBox(width: 100,),
                                                  Icon(Icons.add,color: Colors.black,)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Icon(Icons.favorite_outline,color: Colors.grey,),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                /*Container(
                                  leading: Column(
                                    children: [
                                      Icon(Icons.favorite_outline,color: Colors.grey,),
                                      Icon(Icons.add,color: Colors.black,),
                                    ],
                                  ),
                                  title: Text("Item Name ${i+1}",style: TextStyle(fontWeight: FontWeight.bold),),
                                  subtitle: Column(
                                    children: [
                                      Text("lunch, dinner, breakfast, everyday, order now yalla,${i+1}"),
                                      Row(
                                        children: [
                                          Text("\$5.55${i+1} ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                          Text("\$6.55${i+1}",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),*/
                              );
                            },
                          ),
                          ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context,i){
                              return Card(
                                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100.0),
                                                color: Colors.black,
                                              ),
                                              child: Image.asset("assets/images/a4images/a4.png",height: 80,width: 80,fit: BoxFit.cover,)),
                                          Column(
                                            children: [
                                              Text("Item Name${i+1}",style: TextStyle(fontWeight: FontWeight.bold),),
                                              SizedBox(height: 2.0,),
                                              Text("lunch, dinner, breakfast,${i+1}"),
                                              Row(
                                                children: [
                                                  Text("\$5.55${i+1}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                                  Text(" \$6.55${i+1}",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                                  SizedBox(width: 100,),
                                                  Icon(Icons.add,color: Colors.black,)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Icon(Icons.favorite_outline,color: Colors.grey,),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                /*Container(
                                  leading: Column(
                                    children: [
                                      Icon(Icons.favorite_outline,color: Colors.grey,),
                                      Icon(Icons.add,color: Colors.black,),
                                    ],
                                  ),
                                  title: Text("Item Name ${i+1}",style: TextStyle(fontWeight: FontWeight.bold),),
                                  subtitle: Column(
                                    children: [
                                      Text("lunch, dinner, breakfast, everyday, order now yalla,${i+1}"),
                                      Row(
                                        children: [
                                          Text("\$5.55${i+1} ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                          Text("\$6.55${i+1}",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),*/
                              );
                            },
                          ),
                          ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context,i){
                              return Card(
                                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100.0),
                                                color: Colors.black,
                                              ),
                                              child: Image.asset("assets/images/a4images/a5.jpg",height: 80,width: 80,fit: BoxFit.cover,)),
                                          Column(
                                            children: [
                                              Text("Item Name${i+1}",style: TextStyle(fontWeight: FontWeight.bold),),
                                              SizedBox(height: 2.0,),
                                              Text("lunch, dinner, breakfast,${i+1}"),
                                              Row(
                                                children: [
                                                  Text("\$5.55${i+1}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                                  Text(" \$6.55${i+1}",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                                  SizedBox(width: 100,),
                                                  Icon(Icons.add,color: Colors.black,)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Icon(Icons.favorite_outline,color: Colors.grey,),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                /*Container(
                                  leading: Column(
                                    children: [
                                      Icon(Icons.favorite_outline,color: Colors.grey,),
                                      Icon(Icons.add,color: Colors.black,),
                                    ],
                                  ),
                                  title: Text("Item Name ${i+1}",style: TextStyle(fontWeight: FontWeight.bold),),
                                  subtitle: Column(
                                    children: [
                                      Text("lunch, dinner, breakfast, everyday, order now yalla,${i+1}"),
                                      Row(
                                        children: [
                                          Text("\$5.55${i+1} ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                          Text("\$6.55${i+1}",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),*/
                              );
                            },
                          ),
                          ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context,i){
                              return Card(
                                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100.0),
                                                color: Colors.black,
                                              ),
                                              child: Image.asset("assets/images/a4images/a6.jpeg",height: 80,width: 80,fit: BoxFit.cover,)),
                                          Column(
                                            children: [
                                              Text("Item Name${i+1}",style: TextStyle(fontWeight: FontWeight.bold),),
                                              SizedBox(height: 2.0,),
                                              Text("lunch, dinner, breakfast,${i+1}"),
                                              Row(
                                                children: [
                                                  Text("\$5.55${i+1}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                                  Text(" \$6.55${i+1}",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                                  SizedBox(width: 100,),
                                                  Icon(Icons.add,color: Colors.black,)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Icon(Icons.favorite_outline,color: Colors.grey,),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                /*Container(
                                  leading: Column(
                                    children: [
                                      Icon(Icons.favorite_outline,color: Colors.grey,),
                                      Icon(Icons.add,color: Colors.black,),
                                    ],
                                  ),
                                  title: Text("Item Name ${i+1}",style: TextStyle(fontWeight: FontWeight.bold),),
                                  subtitle: Column(
                                    children: [
                                      Text("lunch, dinner, breakfast, everyday, order now yalla,${i+1}"),
                                      Row(
                                        children: [
                                          Text("\$5.55${i+1} ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                          Text("\$6.55${i+1}",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),*/
                              );
                            },
                          ),
                          ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context,i){
                              return Card(
                                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100.0),
                                                color: Colors.black,
                                              ),
                                              child: Image.asset("assets/images/a4images/a7.jpg",height: 80,width: 80,fit: BoxFit.cover,)),
                                          Column(
                                            children: [
                                              Text("Item Name${i+1}",style: TextStyle(fontWeight: FontWeight.bold),),
                                              SizedBox(height: 2.0,),
                                              Text("lunch, dinner, breakfast,${i+1}"),
                                              Row(
                                                children: [
                                                  Text("\$5.55${i+1}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                                  Text(" \$6.55${i+1}",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                                  SizedBox(width: 100,),
                                                  Icon(Icons.add,color: Colors.black,)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Icon(Icons.favorite_outline,color: Colors.grey,),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                /*Container(
                                  leading: Column(
                                    children: [
                                      Icon(Icons.favorite_outline,color: Colors.grey,),
                                      Icon(Icons.add,color: Colors.black,),
                                    ],
                                  ),
                                  title: Text("Item Name ${i+1}",style: TextStyle(fontWeight: FontWeight.bold),),
                                  subtitle: Column(
                                    children: [
                                      Text("lunch, dinner, breakfast, everyday, order now yalla,${i+1}"),
                                      Row(
                                        children: [
                                          Text("\$5.55${i+1} ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                          Text("\$6.55${i+1}",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),*/
                              );
                            },
                          ),
                          ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context,i){
                              return Card(
                                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100.0),
                                                color: Colors.black,
                                              ),
                                              child: Image.asset("assets/images/a4images/a8.jpg",height: 80,width: 80,fit: BoxFit.cover,)),
                                          Column(
                                            children: [
                                              Text("Item Name${i+1}",style: TextStyle(fontWeight: FontWeight.bold),),
                                              SizedBox(height: 2.0,),
                                              Text("lunch, dinner, breakfast,${i+1}"),
                                              Row(
                                                children: [
                                                  Text("\$5.55${i+1}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                                  Text(" \$6.55${i+1}",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                                  SizedBox(width: 100,),
                                                  Icon(Icons.add,color: Colors.black,)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Icon(Icons.favorite_outline,color: Colors.grey,),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                /*Container(
                                  leading: Column(
                                    children: [
                                      Icon(Icons.favorite_outline,color: Colors.grey,),
                                      Icon(Icons.add,color: Colors.black,),
                                    ],
                                  ),
                                  title: Text("Item Name ${i+1}",style: TextStyle(fontWeight: FontWeight.bold),),
                                  subtitle: Column(
                                    children: [
                                      Text("lunch, dinner, breakfast, everyday, order now yalla,${i+1}"),
                                      Row(
                                        children: [
                                          Text("\$5.55${i+1} ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                          Text("\$6.55${i+1}",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),*/
                              );
                            },
                          ),
                          ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context,i){
                              return Card(
                                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100.0),
                                                color: Colors.black,
                                              ),
                                              child: Image.asset("assets/images/a4images/a1.jpg",height: 80,width: 80,fit: BoxFit.cover,)),
                                          Column(
                                            children: [
                                              Text("Item Name${i+1}",style: TextStyle(fontWeight: FontWeight.bold),),
                                              SizedBox(height: 2.0,),
                                              Text("lunch, dinner, breakfast,${i+1}"),
                                              Row(
                                                children: [
                                                  Text("\$5.55${i+1}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                                  Text(" \$6.55${i+1}",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                                  SizedBox(width: 100,),
                                                  Icon(Icons.add,color: Colors.black,)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Icon(Icons.favorite_outline,color: Colors.grey,),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                /*Container(
                                  leading: Column(
                                    children: [
                                      Icon(Icons.favorite_outline,color: Colors.grey,),
                                      Icon(Icons.add,color: Colors.black,),
                                    ],
                                  ),
                                  title: Text("Item Name ${i+1}",style: TextStyle(fontWeight: FontWeight.bold),),
                                  subtitle: Column(
                                    children: [
                                      Text("lunch, dinner, breakfast, everyday, order now yalla,${i+1}"),
                                      Row(
                                        children: [
                                          Text("\$5.55${i+1} ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                          Text("\$6.55${i+1}",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),*/
                              );
                            },
                          ),
                        ],
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















class A2 extends StatefulWidget {
  @override
  _A2State createState() => _A2State();
}
class _A2State extends State<A2> {


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String _dropdownValue = li.first;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wallet",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),
      ),
      body: SingleChildScrollView(
        child: Container(
          //height: double.infinity,
          //width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //color: Colors.deepOrange,
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                //color: Colors.deepOrange,
                height: height * 0.15,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(width: 2.0,color: Colors.deepOrange),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/i2.jpeg",
                      width: 100,
                      height: 150,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Wallet Amount",style: TextStyle(color: Colors.white, fontSize: 10.0),),
                        SizedBox(height: 10.0,),
                        Text(
                          "\$300.55",
                          style: TextStyle(fontSize: 25.0, color: Colors.white),
                        ),
                      ],
                    ),
                    /*Container(
                      child: ListView.builder(
                        itemCount: li.length,
                        shrinkWrap: true,
                        itemBuilder: (ctx,i){
                          return Text(li[i]);
                        },
                      ),
                    ),*/
                    SizedBox(width: 70.0,),
                    DropdownButton(
                      hint: Text("Withdraw", style: TextStyle(color: Colors.white),),
                      value: _dropdownValue,
                      icon: Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,),
                      style: TextStyle(color: Colors.black),
                      onChanged: (String? value){
                        setState(() {
                          _dropdownValue=value!;
                        });
                      },
                      items: li.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: [
                    gridy("\$0.00", "Presenting Withdraw"),
                    gridy("\$250", "Withdrawwww"),
                    gridy("\$156", "excellent Casty from Customer"),
                    gridy('\$300', "Total Enraning"),
                  ],
                ),
              ),
              SizedBox(height: 15.0,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Withdraw History", style: TextStyle(fontWeight: FontWeight.bold),),
                    TextButton(
                      onPressed: (){
                        showModalBottomSheet(context: context, builder: (BuildContext context){
                          return SizedBox(
                            height: 800,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text("Withdraw", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                                  Image.asset("assets/images/i2.jpeg"),
                                  const Text("Bank America",style: TextStyle(fontSize: 15.0),),
                                  const Text("branch: Dubai",style: TextStyle(color: Colors.grey),),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Account Number: ",style: TextStyle(color: Colors.grey),),
                                      Text("01228899015",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  SizedBox(height: 15.0,),
                                  const Text("Enter Amount", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 15.0,),
                                  SizedBox(height: 15.0,),
                                  Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.all(20.0),
                                    child: ElevatedButton(
                                      child: const Text('Withdraw',style: TextStyle(color: Colors.white),),
                                      onPressed: () => Navigator.pop(context),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.deepOrange,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                      },
                      child: const Text("View All",style: TextStyle(color: Colors.deepOrange),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0,),
              Container(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    listt("\$145.00", "28-5-2021", "transfer to bank name", "Success",Colors.green),
                    SizedBox(height: 8.0,),
                    listt("\$145.00", "28-5-2021", "transfer to bank name", "Success",Colors.green),
                    SizedBox(height: 8.0,),
                    listt("\$145.00", "28-5-2021", "transfer to bank name", "Failed",Colors.red),
                    SizedBox(height: 8.0,),
                    listt("\$145.00", "28-5-2021", "transfer to bank name", "pending",Colors.red),
                    SizedBox(height: 8.0,),
                    listt("\$145.00", "28-5-2021", "transfer to bank name", "Success", Colors.green),
                    SizedBox(height: 8.0,),
                    listt("\$145.00", "28-5-2021", "transfer to bank name", "Failed",Colors.red),
                    SizedBox(height: 8.0,),
                    listt("\$145.00", "28-5-2021", "transfer to bank name", "Failed",Colors.red),
                    SizedBox(height: 8.0,),
                    listt("\$145.00", "28-5-2021", "transfer to bank name", "Success", Colors.green),
                  ],
                ),
              ),


            ],
          ),

        ),
      ),
    );
  }
}
Widget gridy(txt,subtxt) {
  return Container(
    height: 10,
    width: 10,
    color: Colors.white70,
    child: Column(
      children: [
        Text(txt, style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),),
        Text(subtxt,style: TextStyle(color: Colors.grey,fontSize: 10.0),),
      ],
    ),
  );
}
Widget listt(txt1,subtext1,txt2,subtxt2,color){
  return Container(
    padding: EdgeInsets.all(10.0),
    margin: EdgeInsets.all(2.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      border: Border.all(width: 2.0, color: Colors.grey),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(txt1, style: TextStyle(color: Colors.black),),
            Text(subtext1, style: TextStyle(color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(txt2,style: TextStyle(color: Colors.grey),),
                Text(subtxt2,style: TextStyle(color: color),),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}