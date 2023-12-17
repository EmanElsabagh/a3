import 'package:flutter/material.dart';

import '../../data/brands_entity.dart';

class BrandsItem extends StatelessWidget {
  const BrandsItem({super.key, required this.brandsDataRows});
  final BrandsDataRows brandsDataRows;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0,vertical: 3),
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
          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network(brandsDataRows.media?.url??'',width: 75,height: 75,fit: BoxFit.fill,)),
              const SizedBox(width: 15.0,),
              SizedBox(
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(brandsDataRows.title??'',style: const TextStyle(fontSize: 18.0),maxLines: 2,overflow: TextOverflow.clip,),
                    //Text(brandsDataRows.brand?.name??'',style: const TextStyle(fontSize: 15.0,color: Colors.purple),),
                  ],
                ),
              ),
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Text(brandsDataRows.price??'',style: const TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
          // ),

        ],
      ),

    );
  }
}
