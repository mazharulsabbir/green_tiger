// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: (json['list_price'] as num?)?.toDouble() ?? 0.0,
      discount: (json['discount'] as num?)?.toDouble(),
      imageUrl: json['image_1920'] as String?,
      rating: (json['rating_avg'] as num?)?.toDouble() ?? 0.0,
      ratingCount: (json['rating_count'] as num?)?.toDouble() ?? 0.0,
      isFav: json['isFav'] as bool?,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'list_price': instance.price,
      'discount': instance.discount,
      'image_1920': instance.imageUrl,
      'rating_avg': instance.rating,
      'rating_count': instance.ratingCount,
      'isFav': instance.isFav,
    };
