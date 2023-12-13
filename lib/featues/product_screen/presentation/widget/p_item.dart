import 'package:flutter/material.dart';

import '../../data/products_entity.dart';

class PItem extends StatelessWidget {
  const PItem({super.key, required this.productsDataRows});
  final ProductsDataRows productsDataRows;


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
                  child: Image.network(productsDataRows.media?.url??'',width: 75,height: 75,fit: BoxFit.fill,)),
              const SizedBox(width: 15.0,),
             SizedBox(
               width: 200,
               child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(productsDataRows.title??'',style: const TextStyle(fontSize: 18.0),maxLines: 2,overflow: TextOverflow.clip,),
                    Text(productsDataRows.brand?.name??'',style: const TextStyle(fontSize: 15.0,color: Colors.purple),),
                  ],
                ),
             ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(productsDataRows.price??'',style: const TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
          ),

        ],
      ),

    );
  }
}
