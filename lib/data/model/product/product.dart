import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_tiger/data/model/alternative_product/alternative_product.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    int? id,
    String? name,
    @JsonKey(name: 'list_price', defaultValue: 0.0) double? price,
    double? discount,
    @JsonKey(name: 'image_1920') String? imageUrl,
    @JsonKey(name: 'rating_avg', defaultValue: 0.0) double? rating,
    @JsonKey(name: 'rating_count', defaultValue: 0.0) double? ratingCount,
    @JsonKey(name: 'alternative_product_ids', defaultValue: null)
        List<AlternativeProducts>? alternativeProducts,
    bool? isFav,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
