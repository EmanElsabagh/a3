part of 'products_cubit.dart';

@immutable
abstract class ProductsState {
   const ProductsState();
}

class ProductsInitial extends ProductsState {}

class ProductsLoading extends ProductsState {}

class ProductsLoaded extends ProductsState {
   List<ProductsDataRows>? productsDataRows;
   ProductsLoaded(productsDataRows);
}


class ProductsFailed extends ProductsState {
  String? message;
  ProductsFailed(message);
}
