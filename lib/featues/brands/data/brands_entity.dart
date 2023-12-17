import 'package:a3/generated/json/base/json_field.dart';
import 'package:a3/generated/json/brands_entity.g.dart';
import 'dart:convert';
export 'package:a3/generated/json/brands_entity.g.dart';

@JsonSerializable()
class BrandsEntity {
	BrandsData? data;

	BrandsEntity();

	factory BrandsEntity.fromJson(Map<String, dynamic> json) => $BrandsEntityFromJson(json);

	Map<String, dynamic> toJson() => $BrandsEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BrandsData {
	List<BrandsDataRows>? rows;
	BrandsDataPaginate? paginate;

	BrandsData();

	factory BrandsData.fromJson(Map<String, dynamic> json) => $BrandsDataFromJson(json);

	Map<String, dynamic> toJson() => $BrandsDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BrandsDataRows {
	int? id;
	String? encryptId;
	BrandsDataRowsMedia? media;
	String? title;
	bool? popular;
	bool? hasOffer;
	dynamic offerPercentage;
	int? productsNo;

	BrandsDataRows();

	factory BrandsDataRows.fromJson(Map<String, dynamic> json) => $BrandsDataRowsFromJson(json);

	Map<String, dynamic> toJson() => $BrandsDataRowsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BrandsDataRowsMedia {
	String? type;
	String? url;
	BrandsDataRowsMediaResized? resized;

	BrandsDataRowsMedia();

	factory BrandsDataRowsMedia.fromJson(Map<String, dynamic> json) => $BrandsDataRowsMediaFromJson(json);

	Map<String, dynamic> toJson() => $BrandsDataRowsMediaToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BrandsDataRowsMediaResized {
	String? type;
	String? url;

	BrandsDataRowsMediaResized();

	factory BrandsDataRowsMediaResized.fromJson(Map<String, dynamic> json) => $BrandsDataRowsMediaResizedFromJson(json);

	Map<String, dynamic> toJson() => $BrandsDataRowsMediaResizedToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class BrandsDataPaginate {
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

	BrandsDataPaginate();

	factory BrandsDataPaginate.fromJson(Map<String, dynamic> json) => $BrandsDataPaginateFromJson(json);

	Map<String, dynamic> toJson() => $BrandsDataPaginateToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}