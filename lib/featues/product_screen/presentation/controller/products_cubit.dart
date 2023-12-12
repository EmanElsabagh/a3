import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../data/products_entity.dart';
import '../../domain/products_repository.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());


  static ProductsCubit get(context) => BlocProvider.of(context);

  bool isLastPage = false;
  int currentPageIndex = 1;
  int lastPage = 10;

  List<ProductsDataRows> productsList = [];

  ProductsRepository productsRepository = ProductsRepository();

  Future<void> getProducts(Map<String, dynamic> prams) async {
    if (currentPageIndex == 1) {
      emit(ProductsLoading());
    }
    final resul = await productsRepository.getProducts(prams);
    resul.fold((l) {
      emit(ProductsFailed("empty_data"));
    }, (r) {
      final List<ProductsDataRows> fetchedPosts = r.data?.rows ?? [];
      lastPage = r.data?.paginate?.lastPage ?? 1;
      if (r.data == null || r.data!.rows!.isEmpty) {
        emit(ProductsFailed("empty_data"));
      }else{
        if (currentPageIndex == r.data!.paginate!.lastPage) {
          isLastPage = true;
        }
        if (fetchedPosts.isNotEmpty) {
          productsList.addAll(fetchedPosts);
          fetchedPosts.clear();
          emit(ProductsLoaded(productsList));
        }
      }
    });
  }


}
