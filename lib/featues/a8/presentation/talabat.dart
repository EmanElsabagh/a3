import 'package:a3/featues/common_utils/common_widgets.dart';
import 'package:flutter/material.dart';

class Talabat extends StatefulWidget {
  const Talabat({super.key});

  @override
  State<Talabat> createState() => _TalabatState();
}

class _TalabatState extends State<Talabat> {
  final List<String> li = <String>['A', 'B', 'C', 'D', 'E', 'F'];

  double? width ;
  double? height ;
  String? _dropdownValue;
  @override
  void initState() {
     width = MediaQuery.of(context).size.width;
     height = MediaQuery.of(context).size.height;
     _dropdownValue = li.first;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delivering to",style: TextStyle(color: Colors.grey),),
        elevation: 0.0,
        backgroundColor: Colors.white10,
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        actions: const [
          Icon(Icons.favorite_outline,color: Colors.black,),
          Icon(Icons.search_rounded,color: Colors.black,),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Row(
                    children: [
                      DropdownButton(
                          hint: const Text("Withdraw", style: TextStyle(color: Colors.black),),
                          value: _dropdownValue,
                          icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,),
                          style: const TextStyle(color: Colors.black),
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
                      SizedBox(width: 5.0,),
                      DropdownButton(
                        hint: const Text("Withdraw", style: TextStyle(color: Colors.black),),
                        value: _dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,),
                        style: const TextStyle(color: Colors.black),
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
                      SizedBox(width: 5.0,),
                      DropdownButton(
                        hint: const Text("Withdraw", style: TextStyle(color: Colors.black),),
                        value: _dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,),
                        style: const TextStyle(color: Colors.black),
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
                      SizedBox(width: 5.0,),
                      DropdownButton(
                        hint: const Text("Withdraw", style: TextStyle(color: Colors.black),),
                        value: _dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,),
                        style: const TextStyle(color: Colors.black),
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
                      SizedBox(width: 5.0,),
                      DropdownButton(
                        hint: const Text("Withdraw", style: TextStyle(color: Colors.black),),
                        value: _dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,),
                        style: const TextStyle(color: Colors.black),
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
                      SizedBox(width: 5.0,),
                      DropdownButton(
                        hint: const Text("Withdraw", style: TextStyle(color: Colors.black),),
                        value: _dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,),
                        style: const TextStyle(color: Colors.black),
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      firstContainers1("assets/images/a4images/a5.jpg", "Menue Discount"),
                      SizedBox(width: 3.0,),
                      firstContainers1("assets/images/a4images/a5.jpg", "Menue Discount"),
                      SizedBox(width: 3.0,),
                      firstContainers1("assets/images/a4images/a5.jpg", "Menue Discount"),
                      SizedBox(width: 3.0,),
                      firstContainers1("assets/images/a4images/a5.jpg", "Menue Discount"),
                      SizedBox(width: 3.0,),
                      firstContainers1("assets/images/a4images/a5.jpg", "Menue Discount"),
                      SizedBox(width: 3.0,),
                      firstContainers1("assets/images/a4images/a5.jpg", "Menue Discount"),

                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
                const Text("We Know you love these",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
                SizedBox(height: 10.0,),
                Card(
                  color: Colors.white10,
                  elevation: 0.0,
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Carddata("Bazooka", "Burgers, chicken", "4.5", "assets/images/a4images/a5.jpg"),
                            SizedBox(width: 10.0,),
                            Carddata("Khat3am", "Breakfast, Falafel", "4.3", "assets/images/a4images/a4.jpg"),
                            SizedBox(width: 10.0,),
                            Carddata("Bazooka", "Burgers, chicken", "3.5", "assets/images/a4images/a5.jpg"),
                            SizedBox(width: 10.0,),
                            Carddata("Bazooka", "Burgers, chicken", "5.5", "assets/images/a4images/a5.jpg"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                const Row(
                  children: [
                    Text("All restaurants",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                  ],),
                SizedBox(height: 20,),
                Container(
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return ListCardItems("assets/images/a4images/a5.jpg"," 45 min"," EGP 19.00","Om Mohamed  ","Grills, Egyption","2.5","(3)");
                      }
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget firstContainers1(image,txt){
  return Card(
    color: Colors.deepOrangeAccent,
    child: InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(image,width: 70,height: 50,fit: BoxFit.cover,),
            Text(txt,style: TextStyle(fontSize: 12.0),),
          ],
        ),
      ),
    ),
  );
}

/*Widget firstContainers(image,txt){
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      //set border radius more than 50% of height and width to make circle
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(image,width: 50,height: 50,fit: BoxFit.cover,)),
              ],
            ),
            SizedBox(height: 7.0,),
            Text(txt),
          ],
        ),
    ),
  );
}*/
