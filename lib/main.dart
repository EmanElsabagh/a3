import 'package:flutter/material.dart';
void main(){
  runApp(Myhomepage());
}

class Myhomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: A2(),
    );
  }
}

class A2 extends StatefulWidget {

  @override
  _A2State createState() => _A2State();
}
class _A2State extends State<A2> {
  final List<String> li=['A','B','C','D','E','F'];
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
        leading: Icon(Icons.arrow_back_ios_outlined),
      ),
      body: SingleChildScrollView(
        child: Container(
         // alignment: Alignment.center,
         // height: height*0.2,
          child: Row(
            children: [
              //Image.asset(""),
              Column(
                children: [
                  Text("Wallet Account"),
                  Text("\$300.55",style: TextStyle(fontSize: 40.0),),
                ],
              ),
              Container(
                height: 100,
                width: 300,
                child: ListView.builder(
                  itemCount: li.length,
                  shrinkWrap: true,
                  itemBuilder: (ctx,i){
                    return Text(li[i]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

