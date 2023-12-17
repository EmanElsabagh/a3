part of 'brands_cubit.dart';

@immutable
abstract class BrandsState {
  const BrandsState();
}

class BrandsInitial extends BrandsState {}
class BrandsLoading extends BrandsState {}

class BrandsLoaded extends BrandsState {
  final  List<BrandsDataRows>? brandsDataRows;
  const BrandsLoaded(this.brandsDataRows);
}


class BrandsFailed extends BrandsState {
  final String? message;
  const BrandsFailed(this.message);
}
