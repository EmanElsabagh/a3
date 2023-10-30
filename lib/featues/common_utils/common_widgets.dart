
import 'package:flutter/material.dart';

class CommonUtils{

 static InputDecoration textFieldDecoration(String? title, Widget? prefixIcon,  Widget? suffixIcon){
    return InputDecoration(
      hintText: title??'',
      labelText: title??'',
      hintStyle: const TextStyle(color: Colors.grey),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(width: 1, color: Colors.white),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(width: 1,color: Colors.white),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(width: 1,color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(width: 1,color: Colors.red),
      ),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }


  static InkWell customButton({required String title, Function()? onTap}){
   return InkWell(
     onTap: (){
       onTap==null?(){}:onTap();
       },
     child: Container(
       padding: const EdgeInsets.all(10),
       decoration: BoxDecoration(
         color: Colors.blue,
         border: Border.all(width: 2, color: Colors.blue),
         borderRadius: const BorderRadius.all(Radius.circular(16)),
       ),
       child: Center(
           child: Text(title,style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)
       ),
     ),
   );
  }
 /*static InkWell customButtonImage({required Image image, Function()? onTap}){
   return InkWell(
     onTap: (){
       onTap==null?(){}:onTap();
     },
     child: Container(
       padding: const EdgeInsets.all(10),
       decoration: BoxDecoration(
         color: Colors.blue,
         border: Border.all(width: 2, color: Colors.blue),
         borderRadius: const BorderRadius.all(Radius.circular(16)),
       ),
       child: Center(
           child: Image.asset("$image",width: 70,height: 50,fit: BoxFit.cover,),
       ),
     ),
   );
 }
*/
}
class Carddataa8 extends StatelessWidget {
  final txt1;
  final txt2;
  final txt3;
  final image;
  Carddataa8(this.txt1,this.txt2,this.txt3,this.image);
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image,width: 180,height: 150,fit: BoxFit.cover,),
          Text(txt1),
          Text(txt2,style: TextStyle(color: Colors.grey),),
          Row(
            children: [
              Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Text(txt3),
                ],
              ),
              Text("(100+)",style: TextStyle(color: Colors.grey),),
            ],
          ),
        ],
      ),
    );
  }
}

  Card ListCardItems(image,txt1,txt2,txt3,txt4,txt5,txt6) {
    return Card(
      
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(image,width: double.infinity,height: 150,fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.white,
                              ),
                              child:  Row(
                                children: [
                                  Icon(Icons.access_time,color: Colors.black,),
                                  Text(txt1,style: TextStyle(fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.bike_scooter,color: Colors.black,),
                                  Text(txt2,style: TextStyle(fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.white,
                          ),
                          child: Icon(Icons.favorite_outline,color: Colors.black,),
                        ),
                      ],
                    ),
              ),
            ],
          ),
          SizedBox(height: 7.0,),
          Row(
            children: [
              Text(txt3,style: TextStyle(fontWeight: FontWeight.bold),),
              Container(
                color: Colors.grey,
                child: Text("New",style: TextStyle(color: Colors.red),),
              ),
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(txt4),
              Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Text(txt5,style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(txt6,style: TextStyle(color: Colors.grey),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
