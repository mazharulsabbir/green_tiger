// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alternative_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlternativeProducts _$$_AlternativeProductsFromJson(
        Map<String, dynamic> json) =>
    _$_AlternativeProducts(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      saleDescription: json['description_sale'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      listPrice: (json['list_price'] as num?)?.toDouble(),
      imageUrl: json['image_1920'] as String?,
      ratingAvg: (json['rating_avg'] as num?)?.toDouble() ?? 0.0,
      ratingCount: (json['rating_count'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_AlternativeProductsToJson(
        _$_AlternativeProducts instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'description_sale': instance.saleDescription,
      'discount': instance.discount,
      'list_price': instance.listPrice,
      'image_1920': instance.imageUrl,
      'rating_avg': instance.ratingAvg,
      'rating_count': instance.ratingCount,
    };
