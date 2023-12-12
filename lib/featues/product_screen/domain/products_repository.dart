import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import '../../../di/injection.dart';
import '../../../network/dio/network_call.dart';
import '../data/products_entity.dart';



class ProductsRepository{

  Future<Either<String,ProductsEntity>> getProducts(Map<String , dynamic> prams)async{
    late Response response;
    response = await instance<NetworkCall>().request(
        'https://api-test-multivendor.mazadak.net/api/v1/products',
        queryParameters:prams,
        options: Options(method: 'Get', headers: {
          // HttpHeaders.authorizationHeader: 'Bearer ${HiveHelper.getUserToken()}',
        }));

    if(response.statusCode==200){
      return Right(ProductsEntity.fromJson(jsonDecode(response.data)));
    }else{
      return left(jsonDecode(response.data)['data']['message']?? 'empty_data'.tr);

    }
  }
}