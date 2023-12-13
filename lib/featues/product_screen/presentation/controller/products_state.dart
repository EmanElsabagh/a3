part of 'products_cubit.dart';

@immutable
abstract class ProductsState {
   const ProductsState();
}

class ProductsInitial extends ProductsState {}

class ProductsLoading extends ProductsState {}

class ProductsLoaded extends ProductsState {
 final  List<ProductsDataRows>? productsDataRows;
   const ProductsLoaded(this.productsDataRows);
}


class ProductsFailed extends ProductsState {
  final String? message;
  const ProductsFailed(this.message);
}
