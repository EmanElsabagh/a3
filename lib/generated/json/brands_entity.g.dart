import 'package:a3/generated/json/base/json_convert_content.dart';
import 'package:a3/featues/brands/data/brands_entity.dart';

BrandsEntity $BrandsEntityFromJson(Map<String, dynamic> json) {
  final BrandsEntity brandsEntity = BrandsEntity();
  final BrandsData? data = jsonConvert.convert<BrandsData>(json['data']);
  if (data != null) {
    brandsEntity.data = data;
  }
  return brandsEntity;
}

Map<String, dynamic> $BrandsEntityToJson(BrandsEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['data'] = entity.data?.toJson();
  return data;
}

extension BrandsEntityExtension on BrandsEntity {
  BrandsEntity copyWith({
    BrandsData? data,
  }) {
    return BrandsEntity()
      ..data = data ?? this.data;
  }
}

BrandsData $BrandsDataFromJson(Map<String, dynamic> json) {
  final BrandsData brandsData = BrandsData();
  final List<BrandsDataRows>? rows = (json['rows'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<BrandsDataRows>(e) as BrandsDataRows)
      .toList();
  if (rows != null) {
    brandsData.rows = rows;
  }
  final BrandsDataPaginate? paginate = jsonConvert.convert<BrandsDataPaginate>(
      json['paginate']);
  if (paginate != null) {
    brandsData.paginate = paginate;
  }
  return brandsData;
}

Map<String, dynamic> $BrandsDataToJson(BrandsData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['rows'] = entity.rows?.map((v) => v.toJson()).toList();
  data['paginate'] = entity.paginate?.toJson();
  return data;
}

extension BrandsDataExtension on BrandsData {
  BrandsData copyWith({
    List<BrandsDataRows>? rows,
    BrandsDataPaginate? paginate,
  }) {
    return BrandsData()
      ..rows = rows ?? this.rows
      ..paginate = paginate ?? this.paginate;
  }
}

BrandsDataRows $BrandsDataRowsFromJson(Map<String, dynamic> json) {
  final BrandsDataRows brandsDataRows = BrandsDataRows();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    brandsDataRows.id = id;
  }
  final String? encryptId = jsonConvert.convert<String>(json['encryptId']);
  if (encryptId != null) {
    brandsDataRows.encryptId = encryptId;
  }
  final BrandsDataRowsMedia? media = jsonConvert.convert<BrandsDataRowsMedia>(
      json['media']);
  if (media != null) {
    brandsDataRows.media = media;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    brandsDataRows.title = title;
  }
  final bool? popular = jsonConvert.convert<bool>(json['popular']);
  if (popular != null) {
    brandsDataRows.popular = popular;
  }
  final bool? hasOffer = jsonConvert.convert<bool>(json['hasOffer']);
  if (hasOffer != null) {
    brandsDataRows.hasOffer = hasOffer;
  }
  final dynamic offerPercentage = json['offerPercentage'];
  if (offerPercentage != null) {
    brandsDataRows.offerPercentage = offerPercentage;
  }
  final int? productsNo = jsonConvert.convert<int>(json['productsNo']);
  if (productsNo != null) {
    brandsDataRows.productsNo = productsNo;
  }
  return brandsDataRows;
}

Map<String, dynamic> $BrandsDataRowsToJson(BrandsDataRows entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['encryptId'] = entity.encryptId;
  data['media'] = entity.media?.toJson();
  data['title'] = entity.title;
  data['popular'] = entity.popular;
  data['hasOffer'] = entity.hasOffer;
  data['offerPercentage'] = entity.offerPercentage;
  data['productsNo'] = entity.productsNo;
  return data;
}

extension BrandsDataRowsExtension on BrandsDataRows {
  BrandsDataRows copyWith({
    int? id,
    String? encryptId,
    BrandsDataRowsMedia? media,
    String? title,
    bool? popular,
    bool? hasOffer,
    dynamic offerPercentage,
    int? productsNo,
  }) {
    return BrandsDataRows()
      ..id = id ?? this.id
      ..encryptId = encryptId ?? this.encryptId
      ..media = media ?? this.media
      ..title = title ?? this.title
      ..popular = popular ?? this.popular
      ..hasOffer = hasOffer ?? this.hasOffer
      ..offerPercentage = offerPercentage ?? this.offerPercentage
      ..productsNo = productsNo ?? this.productsNo;
  }
}

BrandsDataRowsMedia $BrandsDataRowsMediaFromJson(Map<String, dynamic> json) {
  final BrandsDataRowsMedia brandsDataRowsMedia = BrandsDataRowsMedia();
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    brandsDataRowsMedia.type = type;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    brandsDataRowsMedia.url = url;
  }
  final BrandsDataRowsMediaResized? resized = jsonConvert.convert<
      BrandsDataRowsMediaResized>(json['resized']);
  if (resized != null) {
    brandsDataRowsMedia.resized = resized;
  }
  return brandsDataRowsMedia;
}

Map<String, dynamic> $BrandsDataRowsMediaToJson(BrandsDataRowsMedia entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['type'] = entity.type;
  data['url'] = entity.url;
  data['resized'] = entity.resized?.toJson();
  return data;
}

extension BrandsDataRowsMediaExtension on BrandsDataRowsMedia {
  BrandsDataRowsMedia copyWith({
    String? type,
    String? url,
    BrandsDataRowsMediaResized? resized,
  }) {
    return BrandsDataRowsMedia()
      ..type = type ?? this.type
      ..url = url ?? this.url
      ..resized = resized ?? this.resized;
  }
}

BrandsDataRowsMediaResized $BrandsDataRowsMediaResizedFromJson(
    Map<String, dynamic> json) {
  final BrandsDataRowsMediaResized brandsDataRowsMediaResized = BrandsDataRowsMediaResized();
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    brandsDataRowsMediaResized.type = type;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    brandsDataRowsMediaResized.url = url;
  }
  return brandsDataRowsMediaResized;
}

Map<String, dynamic> $BrandsDataRowsMediaResizedToJson(
    BrandsDataRowsMediaResized entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['type'] = entity.type;
  data['url'] = entity.url;
  return data;
}

extension BrandsDataRowsMediaResizedExtension on BrandsDataRowsMediaResized {
  BrandsDataRowsMediaResized copyWith({
    String? type,
    String? url,
  }) {
    return BrandsDataRowsMediaResized()
      ..type = type ?? this.type
      ..url = url ?? this.url;
  }
}

BrandsDataPaginate $BrandsDataPaginateFromJson(Map<String, dynamic> json) {
  final BrandsDataPaginate brandsDataPaginate = BrandsDataPaginate();
  final int? currentPage = jsonConvert.convert<int>(json['current_page']);
  if (currentPage != null) {
    brandsDataPaginate.currentPage = currentPage;
  }
  final String? firstPageUrl = jsonConvert.convert<String>(
      json['first_page_url']);
  if (firstPageUrl != null) {
    brandsDataPaginate.firstPageUrl = firstPageUrl;
  }
  final int? from = jsonConvert.convert<int>(json['from']);
  if (from != null) {
    brandsDataPaginate.from = from;
  }
  final int? lastPage = jsonConvert.convert<int>(json['last_page']);
  if (lastPage != null) {
    brandsDataPaginate.lastPage = lastPage;
  }
  final String? lastPageUrl = jsonConvert.convert<String>(
      json['last_page_url']);
  if (lastPageUrl != null) {
    brandsDataPaginate.lastPageUrl = lastPageUrl;
  }
  final String? nextPageUrl = jsonConvert.convert<String>(
      json['next_page_url']);
  if (nextPageUrl != null) {
    brandsDataPaginate.nextPageUrl = nextPageUrl;
  }
  final String? path = jsonConvert.convert<String>(json['path']);
  if (path != null) {
    brandsDataPaginate.path = path;
  }
  final int? perPage = jsonConvert.convert<int>(json['per_page']);
  if (perPage != null) {
    brandsDataPaginate.perPage = perPage;
  }
  final dynamic prevPageUrl = json['prev_page_url'];
  if (prevPageUrl != null) {
    brandsDataPaginate.prevPageUrl = prevPageUrl;
  }
  final int? to = jsonConvert.convert<int>(json['to']);
  if (to != null) {
    brandsDataPaginate.to = to;
  }
  final int? total = jsonConvert.convert<int>(json['total']);
  if (total != null) {
    brandsDataPaginate.total = total;
  }
  return brandsDataPaginate;
}

Map<String, dynamic> $BrandsDataPaginateToJson(BrandsDataPaginate entity) {
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

extension BrandsDataPaginateExtension on BrandsDataPaginate {
  BrandsDataPaginate copyWith({
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
    return BrandsDataPaginate()
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