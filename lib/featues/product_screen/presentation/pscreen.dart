import 'package:a3/featues/product_screen/presentation/widget/p_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common_utils/log_utils.dart';
import '../data/products_entity.dart';
import 'controller/products_cubit.dart';
class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

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
        body:BlocProvider(
               create: (context) => ProductsCubit()..getProducts({'paginate':20,'sortBy':'bestSelling'}),
              child: BlocConsumer<ProductsCubit, ProductsState>(
                listener: ( context,  state) {},
                builder: ( context, state) {
                  if(state is ProductsLoaded){
                    List<ProductsDataRows>? data = state.productsDataRows;
                    Log.e((data).toString());
                    return ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        padding: const EdgeInsets.all(10.0),
                        itemCount: data?.length??0,
                        itemBuilder: (BuildContext context, int index) {
                          return  PItem(productsDataRows: data![index]);

                          // return  PItem(title:data?[index].title??'',
                          //   imagePath:data?[index].media?.url??'',
                          //   subtitle:data?[index].brand?.name??'',
                          //   price: data?[index].price??'',);
                        }
                    );
                  }else if(state is ProductsFailed){
                    return Text(state.message??'');
                  }else{
                    return const Center(child: CircularProgressIndicator());
                  }

  },
),
),



// old
//         body:BlocProvider(
//                create: (context) => ProductsCubit()..getProducts({'paginate':20,'sortBy':'bestSelling'}),
//               child: BlocConsumer<ProductsCubit, ProductsState>(
//                 listener: ( context,  state) {},
//                 builder: ( context, state) {
//                   if(state is ProductsLoaded){
//                     List<ProductsDataRows>? data = state.productsDataRows;
//                     Log.e((data).toString());
//                     return ListView.builder(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.vertical,
//                         padding: const EdgeInsets.all(10.0),
//                         itemCount: state.productsDataRows?.length??0,
//                         itemBuilder: (BuildContext context, int index) {
//                           return  PItem(title: state.productsDataRows?[index].title??'',
//                             imagePath:state.productsDataRows?[index].media?.url??'',
//                             subtitle:state.productsDataRows?[index].brand?.name??'',
//                             price: state.productsDataRows?[index].price??'',);
//                         }
//                     );
//                   }else if(state is ProductsFailed){
//                     return Text(state.message??'');
//                   }else{
//                     return const Center(child: CircularProgressIndicator());
//                   }
//
//   },
// ),
// ),
    );
  }
}