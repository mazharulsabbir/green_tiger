import 'package:freezed_annotation/freezed_annotation.dart';

part 'alternative_product.freezed.dart';
part 'alternative_product.g.dart';

@Freezed()
class AlternativeProducts with _$AlternativeProducts {
  const factory AlternativeProducts({
    int? id,
    String? name,
    double? description,
    double? discount,
    @JsonKey(name: 'list_price') String? listPrice,
    @JsonKey(name: 'image_1920') String? imageUrl,
    @JsonKey(name: 'rating_avg', defaultValue: 0.0) double? ratingAvg,
    @JsonKey(name: 'rating_count', defaultValue: 0.0) double? ratingCount,
  }) = _AlternativeProducts;

  factory AlternativeProducts.fromJson(Map<String, dynamic> json) =>
      _$AlternativeProductsFromJson(json);
}
