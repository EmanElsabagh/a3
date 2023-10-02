// import 'package:flutter/material.dart';
//
// import 'components/gridy.dart';
//
//
//
// class A2 extends StatefulWidget {
//   @override
//   _A2State createState() => _A2State();
// }
// class _A2State extends State<A2> {
//   final List<String> li = <String>['A', 'B', 'C', 'D', 'E', 'F'];
//   double? width ;
//   double? height ;
//   String? _dropdownValue;
//   @override
//   void initState() {
//      width = MediaQuery.of(context).size.width;
//      height = MediaQuery.of(context).size.height;
//      _dropdownValue = li.first;
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Wallet",
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Colors.black),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         elevation: 0.0,
//         leading: const Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           //height: double.infinity,
//           //width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 //color: Colors.deepOrange,
//                 margin: const EdgeInsets.all(10.0),
//                 padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
//                 //color: Colors.deepOrange,
//                 height: height! * 0.15,
//                 decoration: BoxDecoration(
//                   color: Colors.deepOrange,
//                   borderRadius: BorderRadius.circular(15.0),
//                   border: Border.all(width: 2.0,color: Colors.deepOrange),
//                 ),
//                 child: Row(
//                   children: [
//                     Image.asset(
//                       "assets/images/i2.jpeg",
//                       width: 100,
//                       height: 150,
//                     ),
//                     const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text("Wallet Amount",style: TextStyle(color: Colors.white, fontSize: 10.0),),
//                         SizedBox(height: 10.0,),
//                         Text(
//                           "\$300.55",
//                           style: TextStyle(fontSize: 25.0, color: Colors.white),
//                         ),
//                       ],
//                     ),
//                     /*Container(
//                       child: ListView.builder(
//                         itemCount: li.length,
//                         shrinkWrap: true,
//                         itemBuilder: (ctx,i){
//                           return Text(li[i]);
//                         },
//                       ),
//                     ),*/
//                     const SizedBox(width: 70.0,),
//                     DropdownButton(
//                       hint: const Text("Withdraw", style: TextStyle(color: Colors.white),),
//                       value: _dropdownValue,
//                       icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,),
//                       style: const TextStyle(color: Colors.black),
//                       onChanged: (String? value){
//                         setState(() {
//                           _dropdownValue=value!;
//                         });
//                       },
//                       items: li.map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 50,
//                 child: GridView.count(
//                   shrinkWrap: true,
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 10,
//                   crossAxisCount: 2,
//                   children: const [
//                     Gridy(txt:"\$0.00", subtxt: "Presenting Withdraw"),
//                     Gridy(txt:"\$250",subtxt:  "Withdrawwww"),
//                     Gridy(txt:"\$156",subtxt:  "excellent Casty from Customer"),
//                     Gridy(txt:'\$300',subtxt:  "Total Enraning"),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 15.0,),
//               Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text("Withdraw History", style: TextStyle(fontWeight: FontWeight.bold),),
//                     TextButton(
//                       onPressed: (){
//                         showModalBottomSheet(context: context, builder: (BuildContext context){
//                           return SizedBox(
//                             height: 800,
//                             child: Center(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: [
//                                   const Text("Withdraw", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
//                                   Image.asset("assets/images/i2.jpeg"),
//                                   const Text("Bank America",style: TextStyle(fontSize: 15.0),),
//                                   const Text("branch: Dubai",style: TextStyle(color: Colors.grey),),
//                                   const Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Text("Account Number: ",style: TextStyle(color: Colors.grey),),
//                                       Text("01228899015",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
//                                     ],
//                                   ),
//                                   const SizedBox(height: 15.0,),
//                                   const Text("Enter Amount", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
//                                   const SizedBox(height: 15.0,),
//                                   const SizedBox(height: 15.0,),
//                                   Container(
//                                     width: double.infinity,
//                                     margin: const EdgeInsets.all(20.0),
//                                     child: ElevatedButton(
//                                       child: const Text('Withdraw',style: TextStyle(color: Colors.white),),
//                                       onPressed: () => Navigator.pop(context),
//                                       style: ElevatedButton.styleFrom(
//                                         primary: Colors.deepOrange,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           );
//                         });
//                       },
//                       child: const Text("View All",style: TextStyle(color: Colors.deepOrange),),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 15.0,),
//               Container(
//                 child: ListView(
//                   shrinkWrap: true,
//                   children: [
//                     listt("\$145.00", "28-5-2021", "transfer to bank name", "Success",Colors.green),
//                     const SizedBox(height: 8.0,),
//                     listt("\$145.00", "28-5-2021", "transfer to bank name", "Success",Colors.green),
//                     const SizedBox(height: 8.0,),
//                     listt("\$145.00", "28-5-2021", "transfer to bank name", "Failed",Colors.red),
//                     const SizedBox(height: 8.0,),
//                     listt("\$145.00", "28-5-2021", "transfer to bank name", "pending",Colors.red),
//                     const SizedBox(height: 8.0,),
//                     listt("\$145.00", "28-5-2021", "transfer to bank name", "Success", Colors.green),
//                     const SizedBox(height: 8.0,),
//                     listt("\$145.00", "28-5-2021", "transfer to bank name", "Failed",Colors.red),
//                     const SizedBox(height: 8.0,),
//                     listt("\$145.00", "28-5-2021", "transfer to bank name", "Failed",Colors.red),
//                     const SizedBox(height: 8.0,),
//                     listt("\$145.00", "28-5-2021", "transfer to bank name", "Success", Colors.green),
//                   ],
//                 ),
//               ),
//
//
//             ],
//           ),
//
//         ),
//       ),
//     );
//   }
// }