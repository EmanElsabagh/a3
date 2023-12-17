import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import '../../../di/injection.dart';
import '../../../network/dio/enum.dart';
import '../../../network/dio/network_call.dart';
import '../../../network/urls/apis.dart';
import '../data/brands_entity.dart';



class BrandsRepository{

  Future<Either<String,BrandsEntity>> getBrands(Map<String , dynamic> prams)async{
    late Response response;
    response = await instance<NetworkCall>().request(
        Apis.getBrands,
        queryParameters:prams,
        options: Options(method:Method.get.name,
          //     headers: {
          //    HttpHeaders.authorizationHeader: 'Bearer ${HiveHelper.getUserToken()}',
          // }
        ));

    if(response.statusCode==200){
      return Right(BrandsEntity.fromJson(jsonDecode(response.data)));
    }else{
      return left(jsonDecode(response.data)['data']['message']?? 'empty_data'.tr);

    }
  }
}