import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../common_utils/log_utils.dart';
import '../data/brands_entity.dart';
import 'controller/brands_cubit.dart';
import 'widget/p_item.dart';
class BrandsScreen extends StatefulWidget {
  const BrandsScreen({super.key});

  @override
  State<BrandsScreen> createState() => _BrandsScreenState();
}

class _BrandsScreenState extends State<BrandsScreen> {
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
        create: (context) => BrandsCubit()..getBrandsCubit({'paginate':20,}),
        child: BlocConsumer<BrandsCubit, BrandsState>(
          listener: ( context,  state) {},
          builder: ( context, state) {
            if(state is BrandsLoaded){
              List<BrandsDataRows>? data = state.brandsDataRows;
              Log.e((data).toString());
              return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(10.0),
                  itemCount: data?.length??0,
                  itemBuilder: (BuildContext context, int index) {
                    return  BrandsItem(brandsDataRows: data![index]);

                    // return  PItem(title:data?[index].title??'',
                    //   imagePath:data?[index].media?.url??'',
                    //   subtitle:data?[index].brand?.name??'',
                    //   price: data?[index].price??'',);
                  }
              );
            }else if(state is BrandsFailed){
              return Text(state.message??'');
            }else{
              return const Center(child: CircularProgressIndicator());
            }

          },
        ),
      ),

    );
  }
}