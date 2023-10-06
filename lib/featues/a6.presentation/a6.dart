import 'package:flutter/material.dart';
class A6 extends StatefulWidget {
  const A6({super.key});

  @override
  State<A6> createState() => _A6State();
}

class _A6State extends State<A6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,),
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
        itemBuilder: (context,index){
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 7.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white54,
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius:const BorderRadius.all(Radius.circular(16)),
                      child: Image.asset("assets/images/a4images/a5.jpg",width: 80,height: 80,fit: BoxFit.cover,),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Item new item new item  ${index+1}"),
                              const SizedBox(height: 3.0,),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.podcasts,color: Colors.black,),
                                  Text("xyz",style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ],
                          ),
                          const  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$103.00",style: TextStyle(color: Colors.blue),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(Icons.minimize,color: Colors.blue,),
                                  Text("0"),
                                  Icon(Icons.add,color: Colors.blue,),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            );
    },
      ),
    );
  }
}
