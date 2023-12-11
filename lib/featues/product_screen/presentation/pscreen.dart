import 'package:a3/featues/product_screen/presentation/widget/p_item.dart';
import 'package:flutter/material.dart';
class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {



List<String> imageList=["assets/images/a4images/im2.jpg","assets/images/a4images/im2.jpg","assets/images/a4images/im2.jpg","assets/images/a4images/im2.jpg",];
List<String> title1List=['t1','t2','t3','t4'];
List<String> title2List=['sup1','sup2','sup3','sup4'];
List<String> priceList=['100\$','200\$','150\$','90\$'];






  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          actions: const [
            Icon(Icons.search,color: Colors.black,),
            Icon(Icons.add_alert,color: Colors.black,),
          ],
          leading: const Icon(Icons.add_alert,color: Colors.black,),
        backgroundColor: Colors.white70,
        ),
        body:ListView.builder(
          padding: EdgeInsets.all(10.0),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return  PItem(title: title1List[index],imagePath:imageList[index],subtitle: title2List[index],price: priceList[index],);
              }
            ),
    );
  }
}