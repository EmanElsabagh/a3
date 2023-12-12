import 'package:a3/generated/json/base/json_convert_content.dart';
import 'package:a3/featues/product_screen/data/products_entity.dart';

ProductsEntity $ProductsEntityFromJson(Map<String, dynamic> json) {
  final ProductsEntity productsEntity = ProductsEntity();
  final ProductsData? data = jsonConvert.convert<ProductsData>(json['data']);
  if (data != null) {
    productsEntity.data = data;
  }
  return productsEntity;
}

Map<String, dynamic> $ProductsEntityToJson(ProductsEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['data'] = entity.data?.toJson();
  return data;
}

extension ProductsEntityExtension on ProductsEntity {
  ProductsEntity copyWith({
    ProductsData? data,
  }) {
    return ProductsEntity()
      ..data = data ?? this.data;
  }
}

ProductsData $ProductsDataFromJson(Map<String, dynamic> json) {
  final ProductsData productsData = ProductsData();
  final List<ProductsDataRows>? rows = (json['rows'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<ProductsDataRows>(e) as ProductsDataRows)
      .toList();
  if (rows != null) {
    productsData.rows = rows;
  }
  final ProductsDataPaginate? paginate = jsonConvert.convert<
      ProductsDataPaginate>(json['paginate']);
  if (paginate != null) {
    productsData.paginate = paginate;
  }
  return productsData;
}

Map<String, dynamic> $ProductsDataToJson(ProductsData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['rows'] = entity.rows?.map((v) => v.toJson()).toList();
  data['paginate'] = entity.paginate?.toJson();
  return data;
}

extension ProductsDataExtension on ProductsData {
  ProductsData copyWith({
    List<ProductsDataRows>? rows,
    ProductsDataPaginate? paginate,
  }) {
    return ProductsData()
      ..rows = rows ?? this.rows
      ..paginate = paginate ?? this.paginate;
  }
}

ProductsDataRows $ProductsDataRowsFromJson(Map<String, dynamic> json) {
  final ProductsDataRows productsDataRows = ProductsDataRows();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    productsDataRows.id = id;
  }
  final String? encryptId = jsonConvert.convert<String>(json['encryptId']);
  if (encryptId != null) {
    productsDataRows.encryptId = encryptId;
  }
  final ProductsDataRowsMedia? media = jsonConvert.convert<
      ProductsDataRowsMedia>(json['media']);
  if (media != null) {
    productsDataRows.media = media;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    productsDataRows.title = title;
  }
  final String? oldPrice = jsonConvert.convert<String>(json['oldPrice']);
  if (oldPrice != null) {
    productsDataRows.oldPrice = oldPrice;
  }
  final String? price = jsonConvert.convert<String>(json['price']);
  if (price != null) {
    productsDataRows.price = price;
  }
  final String? vendorPrice = jsonConvert.convert<String>(json['vendorPrice']);
  if (vendorPrice != null) {
    productsDataRows.vendorPrice = vendorPrice;
  }
  final bool? hasOffer = jsonConvert.convert<bool>(json['hasOffer']);
  if (hasOffer != null) {
    productsDataRows.hasOffer = hasOffer;
  }
  final dynamic offerPercentage = json['offerPercentage'];
  if (offerPercentage != null) {
    productsDataRows.offerPercentage = offerPercentage;
  }
  final bool? inWishlist = jsonConvert.convert<bool>(json['inWishlist']);
  if (inWishlist != null) {
    productsDataRows.inWishlist = inWishlist;
  }
  final bool? inShoppingCart = jsonConvert.convert<bool>(
      json['inShoppingCart']);
  if (inShoppingCart != null) {
    productsDataRows.inShoppingCart = inShoppingCart;
  }
  final String? minQtyPerOrder = jsonConvert.convert<String>(
      json['minQtyPerOrder']);
  if (minQtyPerOrder != null) {
    productsDataRows.minQtyPerOrder = minQtyPerOrder;
  }
  final bool? outOfStock = jsonConvert.convert<bool>(json['outOfStock']);
  if (outOfStock != null) {
    productsDataRows.outOfStock = outOfStock;
  }
  final int? productRating = jsonConvert.convert<int>(json['productRating']);
  if (productRating != null) {
    productsDataRows.productRating = productRating;
  }
  final ProductsDataRowsBrand? brand = jsonConvert.convert<
      ProductsDataRowsBrand>(json['brand']);
  if (brand != null) {
    productsDataRows.brand = brand;
  }
  final ProductsDataRowsMainCategory? mainCategory = jsonConvert.convert<
      ProductsDataRowsMainCategory>(json['mainCategory']);
  if (mainCategory != null) {
    productsDataRows.mainCategory = mainCategory;
  }
  final ProductsDataRowsSubCategory? subCategory = jsonConvert.convert<
      ProductsDataRowsSubCategory>(json['subCategory']);
  if (subCategory != null) {
    productsDataRows.subCategory = subCategory;
  }
  final dynamic sub2Category = json['sub2Category'];
  if (sub2Category != null) {
    productsDataRows.sub2Category = sub2Category;
  }
  return productsDataRows;
}

Map<String, dynamic> $ProductsDataRowsToJson(ProductsDataRows entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['encryptId'] = entity.encryptId;
  data['media'] = entity.media?.toJson();
  data['title'] = entity.title;
  data['oldPrice'] = entity.oldPrice;
  data['price'] = entity.price;
  data['vendorPrice'] = entity.vendorPrice;
  data['hasOffer'] = entity.hasOffer;
  data['offerPercentage'] = entity.offerPercentage;
  data['inWishlist'] = entity.inWishlist;
  data['inShoppingCart'] = entity.inShoppingCart;
  data['minQtyPerOrder'] = entity.minQtyPerOrder;
  data['outOfStock'] = entity.outOfStock;
  data['productRating'] = entity.productRating;
  data['brand'] = entity.brand?.toJson();
  data['mainCategory'] = entity.mainCategory?.toJson();
  data['subCategory'] = entity.subCategory?.toJson();
  data['sub2Category'] = entity.sub2Category;
  return data;
}

extension ProductsDataRowsExtension on ProductsDataRows {
  ProductsDataRows copyWith({
    int? id,
    String? encryptId,
    ProductsDataRowsMedia? media,
    String? title,
    String? oldPrice,
    String? price,
    String? vendorPrice,
    bool? hasOffer,
    dynamic offerPercentage,
    bool? inWishlist,
    bool? inShoppingCart,
    String? minQtyPerOrder,
    bool? outOfStock,
    int? productRating,
    ProductsDataRowsBrand? brand,
    ProductsDataRowsMainCategory? mainCategory,
    ProductsDataRowsSubCategory? subCategory,
    dynamic sub2Category,
  }) {
    return ProductsDataRows()
      ..id = id ?? this.id
      ..encryptId = encryptId ?? this.encryptId
      ..media = media ?? this.media
      ..title = title ?? this.title
      ..oldPrice = oldPrice ?? this.oldPrice
      ..price = price ?? this.price
      ..vendorPrice = vendorPrice ?? this.vendorPrice
      ..hasOffer = hasOffer ?? this.hasOffer
      ..offerPercentage = offerPercentage ?? this.offerPercentage
      ..inWishlist = inWishlist ?? this.inWishlist
      ..inShoppingCart = inShoppingCart ?? this.inShoppingCart
      ..minQtyPerOrder = minQtyPerOrder ?? this.minQtyPerOrder
      ..outOfStock = outOfStock ?? this.outOfStock
      ..productRating = productRating ?? this.productRating
      ..brand = brand ?? this.brand
      ..mainCategory = mainCategory ?? this.mainCategory
      ..subCategory = subCategory ?? this.subCategory
      ..sub2Category = sub2Category ?? this.sub2Category;
  }
}

ProductsDataRowsMedia $ProductsDataRowsMediaFromJson(
    Map<String, dynamic> json) {
  final ProductsDataRowsMedia productsDataRowsMedia = ProductsDataRowsMedia();
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    productsDataRowsMedia.type = type;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    productsDataRowsMedia.url = url;
  }
  final ProductsDataRowsMediaResized? resized = jsonConvert.convert<
      ProductsDataRowsMediaResized>(json['resized']);
  if (resized != null) {
    productsDataRowsMedia.resized = resized;
  }
  return productsDataRowsMedia;
}

Map<String, dynamic> $ProductsDataRowsMediaToJson(
    ProductsDataRowsMedia entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['type'] = entity.type;
  data['url'] = entity.url;
  data['resized'] = entity.resized?.toJson();
  return data;
}

extension ProductsDataRowsMediaExtension on ProductsDataRowsMedia {
  ProductsDataRowsMedia copyWith({
    String? type,
    String? url,
    ProductsDataRowsMediaResized? resized,
  }) {
    return ProductsDataRowsMedia()
      ..type = type ?? this.type
      ..url = url ?? this.url
      ..resized = resized ?? this.resized;
  }
}

ProductsDataRowsMediaResized $ProductsDataRowsMediaResizedFromJson(
    Map<String, dynamic> json) {
  final ProductsDataRowsMediaResized productsDataRowsMediaResized = ProductsDataRowsMediaResized();
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    productsDataRowsMediaResized.type = type;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    productsDataRowsMediaResized.url = url;
  }
  return productsDataRowsMediaResized;
}

Map<String, dynamic> $ProductsDataRowsMediaResizedToJson(
    ProductsDataRowsMediaResized entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['type'] = entity.type;
  data['url'] = entity.url;
  return data;
}

extension ProductsDataRowsMediaResizedExtension on ProductsDataRowsMediaResized {
  ProductsDataRowsMediaResized copyWith({
    String? type,
    String? url,
  }) {
    return ProductsDataRowsMediaResized()
      ..type = type ?? this.type
      ..url = url ?? this.url;
  }
}

ProductsDataRowsBrand $ProductsDataRowsBrandFromJson(
    Map<String, dynamic> json) {
  final ProductsDataRowsBrand productsDataRowsBrand = ProductsDataRowsBrand();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    productsDataRowsBrand.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productsDataRowsBrand.name = name;
  }
  return productsDataRowsBrand;
}

Map<String, dynamic> $ProductsDataRowsBrandToJson(
    ProductsDataRowsBrand entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension ProductsDataRowsBrandExtension on ProductsDataRowsBrand {
  ProductsDataRowsBrand copyWith({
    String? id,
    String? name,
  }) {
    return ProductsDataRowsBrand()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

ProductsDataRowsMainCategory $ProductsDataRowsMainCategoryFromJson(
    Map<String, dynamic> json) {
  final ProductsDataRowsMainCategory productsDataRowsMainCategory = ProductsDataRowsMainCategory();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    productsDataRowsMainCategory.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productsDataRowsMainCategory.name = name;
  }
  return productsDataRowsMainCategory;
}

Map<String, dynamic> $ProductsDataRowsMainCategoryToJson(
    ProductsDataRowsMainCategory entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension ProductsDataRowsMainCategoryExtension on ProductsDataRowsMainCategory {
  ProductsDataRowsMainCategory copyWith({
    int? id,
    String? name,
  }) {
    return ProductsDataRowsMainCategory()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

ProductsDataRowsSubCategory $ProductsDataRowsSubCategoryFromJson(
    Map<String, dynamic> json) {
  final ProductsDataRowsSubCategory productsDataRowsSubCategory = ProductsDataRowsSubCategory();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    productsDataRowsSubCategory.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productsDataRowsSubCategory.name = name;
  }
  return productsDataRowsSubCategory;
}

Map<String, dynamic> $ProductsDataRowsSubCategoryToJson(
    ProductsDataRowsSubCategory entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension ProductsDataRowsSubCategoryExtension on ProductsDataRowsSubCategory {
  ProductsDataRowsSubCategory copyWith({
    int? id,
    String? name,
  }) {
    return ProductsDataRowsSubCategory()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

ProductsDataPaginate $ProductsDataPaginateFromJson(Map<String, dynamic> json) {
  final ProductsDataPaginate productsDataPaginate = ProductsDataPaginate();
  final int? currentPage = jsonConvert.convert<int>(json['current_page']);
  if (currentPage != null) {
    productsDataPaginate.currentPage = currentPage;
  }
  final String? firstPageUrl = jsonConvert.convert<String>(
      json['first_page_url']);
  if (firstPageUrl != null) {
    productsDataPaginate.firstPageUrl = firstPageUrl;
  }
  final int? from = jsonConvert.convert<int>(json['from']);
  if (from != null) {
    productsDataPaginate.from = from;
  }
  final int? lastPage = jsonConvert.convert<int>(json['last_page']);
  if (lastPage != null) {
    productsDataPaginate.lastPage = lastPage;
  }
  final String? lastPageUrl = jsonConvert.convert<String>(
      json['last_page_url']);
  if (lastPageUrl != null) {
    productsDataPaginate.lastPageUrl = lastPageUrl;
  }
  final String? nextPageUrl = jsonConvert.convert<String>(
      json['next_page_url']);
  if (nextPageUrl != null) {
    productsDataPaginate.nextPageUrl = nextPageUrl;
  }
  final String? path = jsonConvert.convert<String>(json['path']);
  if (path != null) {
    productsDataPaginate.path = path;
  }
  final int? perPage = jsonConvert.convert<int>(json['per_page']);
  if (perPage != null) {
    productsDataPaginate.perPage = perPage;
  }
  final dynamic prevPageUrl = json['prev_page_url'];
  if (prevPageUrl != null) {
    productsDataPaginate.prevPageUrl = prevPageUrl;
  }
  final int? to = jsonConvert.convert<int>(json['to']);
  if (to != null) {
    productsDataPaginate.to = to;
  }
  final int? total = jsonConvert.convert<int>(json['total']);
  if (total != null) {
    productsDataPaginate.total = total;
  }
  return productsDataPaginate;
}

Map<String, dynamic> $ProductsDataPaginateToJson(ProductsDataPaginate entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['current_page'] = entity.currentPage;
  data['first_page_url'] = entity.firstPageUrl;
  data['from'] = entity.from;
  data['last_page'] = entity.lastPage;
  data['last_page_url'] = entity.lastPageUrl;
  data['next_page_url'] = entity.nextPageUrl;
  data['path'] = entity.path;
  data['per_page'] = entity.perPage;
  data['prev_page_url'] = entity.prevPageUrl;
  data['to'] = entity.to;
  data['total'] = entity.total;
  return data;
}

extension ProductsDataPaginateExtension on ProductsDataPaginate {
  ProductsDataPaginate copyWith({
    int? currentPage,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    String? lastPageUrl,
    String? nextPageUrl,
    String? path,
    int? perPage,
    dynamic prevPageUrl,
    int? to,
    int? total,
  }) {
    return ProductsDataPaginate()
      ..currentPage = currentPage ?? this.currentPage
      ..firstPageUrl = firstPageUrl ?? this.firstPageUrl
      ..from = from ?? this.from
      ..lastPage = lastPage ?? this.lastPage
      ..lastPageUrl = lastPageUrl ?? this.lastPageUrl
      ..nextPageUrl = nextPageUrl ?? this.nextPageUrl
      ..path = path ?? this.path
      ..perPage = perPage ?? this.perPage
      ..prevPageUrl = prevPageUrl ?? this.prevPageUrl
      ..to = to ?? this.to
      ..total = total ?? this.total;
  }
}