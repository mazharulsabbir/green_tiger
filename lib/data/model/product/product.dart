import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({    
    int? id,
    String? name,
    double? price,
    double? discount,
    String? imageUrl,
    double? rating,
    int? ratingCount,
    bool? isFav,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
