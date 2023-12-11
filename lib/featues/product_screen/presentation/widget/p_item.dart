import 'package:flutter/material.dart';

class PItem extends StatelessWidget {
  const PItem({super.key, this.imagePath="", this.title="eman", this.subtitle="younis", this.price=""});
  final String imagePath;
  final String title;
  final String subtitle;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: [   BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(imagePath,width: 75,height: 75,fit: BoxFit.cover,)),
          const SizedBox(width: 15.0,),
         Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: TextStyle(fontSize: 15.0),),
              Text(subtitle,style: TextStyle(fontSize: 15.0,color: Colors.purple),),
            ],
          ),
          Text(price,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
