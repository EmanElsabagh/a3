import 'package:a3/generated/json/base/json_field.dart';
import 'package:a3/generated/json/products_entity.g.dart';
import 'dart:convert';
export 'package:a3/generated/json/products_entity.g.dart';

@JsonSerializable()
class ProductsEntity {
	ProductsData? data;

	ProductsEntity();

	factory ProductsEntity.fromJson(Map<String, dynamic> json) => $ProductsEntityFromJson(json);

	Map<String, dynamic> toJson() => $ProductsEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ProductsData {
	List<ProductsDataRows>? rows;
	ProductsDataPaginate? paginate;

	ProductsData();

	factory ProductsData.fromJson(Map<String, dynamic> json) => $ProductsDataFromJson(json);

	Map<String, dynamic> toJson() => $ProductsDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ProductsDataRows {
	int? id;
	String? encryptId;
	ProductsDataRowsMedia? media;
	String? title;
	String? oldPrice;
	String? price;
	String? vendorPrice;
	bool? hasOffer;
	dynamic offerPercentage;
	bool? inWishlist;
	bool? inShoppingCart;
	String? minQtyPerOrder;
	bool? outOfStock;
	int? productRating;
	ProductsDataRowsBrand? brand;
	ProductsDataRowsMainCategory? mainCategory;
	ProductsDataRowsSubCategory? subCategory;
	dynamic sub2Category;

	ProductsDataRows();

	factory ProductsDataRows.fromJson(Map<String, dynamic> json) => $ProductsDataRowsFromJson(json);

	Map<String, dynamic> toJson() => $ProductsDataRowsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ProductsDataRowsMedia {
	String? type;
	String? url;
	ProductsDataRowsMediaResized? resized;

	ProductsDataRowsMedia();

	factory ProductsDataRowsMedia.fromJson(Map<String, dynamic> json) => $ProductsDataRowsMediaFromJson(json);

	Map<String, dynamic> toJson() => $ProductsDataRowsMediaToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ProductsDataRowsMediaResized {
	String? type;
	String? url;

	ProductsDataRowsMediaResized();

	factory ProductsDataRowsMediaResized.fromJson(Map<String, dynamic> json) => $ProductsDataRowsMediaResizedFromJson(json);

	Map<String, dynamic> toJson() => $ProductsDataRowsMediaResizedToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ProductsDataRowsBrand {
	String? id;
	String? name;

	ProductsDataRowsBrand();

	factory ProductsDataRowsBrand.fromJson(Map<String, dynamic> json) => $ProductsDataRowsBrandFromJson(json);

	Map<String, dynamic> toJson() => $ProductsDataRowsBrandToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ProductsDataRowsMainCategory {
	int? id;
	String? name;

	ProductsDataRowsMainCategory();

	factory ProductsDataRowsMainCategory.fromJson(Map<String, dynamic> json) => $ProductsDataRowsMainCategoryFromJson(json);

	Map<String, dynamic> toJson() => $ProductsDataRowsMainCategoryToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ProductsDataRowsSubCategory {
	int? id;
	String? name;

	ProductsDataRowsSubCategory();

	factory ProductsDataRowsSubCategory.fromJson(Map<String, dynamic> json) => $ProductsDataRowsSubCategoryFromJson(json);

	Map<String, dynamic> toJson() => $ProductsDataRowsSubCategoryToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ProductsDataPaginate {
	@JSONField(name: "current_page")
	int? currentPage;
	@JSONField(name: "first_page_url")
	String? firstPageUrl;
	int? from;
	@JSONField(name: "last_page")
	int? lastPage;
	@JSONField(name: "last_page_url")
	String? lastPageUrl;
	@JSONField(name: "next_page_url")
	String? nextPageUrl;
	String? path;
	@JSONField(name: "per_page")
	int? perPage;
	@JSONField(name: "prev_page_url")
	dynamic prevPageUrl;
	int? to;
	int? total;

	ProductsDataPaginate();

	factory ProductsDataPaginate.fromJson(Map<String, dynamic> json) => $ProductsDataPaginateFromJson(json);

	Map<String, dynamic> toJson() => $ProductsDataPaginateToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}