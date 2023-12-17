import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../data/brands_entity.dart';
import '../../domain/brands_repository.dart';

part 'brands_state.dart';

class BrandsCubit extends Cubit<BrandsState> {
  BrandsCubit() : super(BrandsInitial());
  static BrandsCubit get(context) => BlocProvider.of(context);

  bool isLastPage = false;
  int currentPageIndex = 1;
  int lastPage = 10;

  List<BrandsDataRows> brandsList = [];

  BrandsRepository brandsRepository = BrandsRepository();

  Future<void> getBrandsCubit(Map<String, dynamic> prams) async {
    if (currentPageIndex == 1) {
      emit(BrandsLoading());
    }
    final resul = await brandsRepository.getBrands(prams);
    resul.fold((l) {
      emit(const BrandsFailed("empty_data"));
    }, (r) {
      final List<BrandsDataRows> fetchedPosts = r.data?.rows ?? [];
      lastPage = r.data?.paginate?.lastPage ?? 1;
      if (r.data == null || r.data!.rows!.isEmpty) {
        emit(const BrandsFailed("empty_data"));
      }else{
        if (currentPageIndex == r.data!.paginate!.lastPage) {
          isLastPage = true;
        }
        if (fetchedPosts.isNotEmpty) {
          brandsList.addAll(fetchedPosts);
          fetchedPosts.clear();
          emit(BrandsLoaded(brandsList));
        }
      }
    });
  }

}
