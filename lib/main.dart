import 'package:flutter/material.dart';
final List<String> li = <String>['A', 'B', 'C', 'D', 'E', 'F'];
void main() {
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
           GridView.count(
             crossAxisSpacing: 10,
             mainAxisSpacing: 10,
             crossAxisCount: 2,
           children: [
             Container(
               padding: const EdgeInsets.all(8),
               color: Colors.teal[200],
               child: const Text('Heed not the rabble'),
             ),
           // gridy("\$0.00", "Presenting Withdraw"),
            //gridy("\$250", "Withdrawwww"),
            //gridy("\$156", "excellent Casty from Customer"),
            //gridy('\$300', "Total Enraning"),
          ],
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
    color: Colors.grey,
    child: Column(
      children: [
        Text(txt, style: TextStyle(color: Colors.deepOrange),),
        Text(subtxt,style: TextStyle(color: Colors.deepOrange),),
      ],
    ),
  );

}