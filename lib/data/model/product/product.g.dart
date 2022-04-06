// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: (json['list_price'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      imageUrl: json['imageUrl'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      ratingCount: json['ratingCount'] as int?,
      isFav: json['isFav'] as bool?,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'discount': instance.discount,
      'imageUrl': instance.imageUrl,
      'rating': instance.rating,
      'ratingCount': instance.ratingCount,
      'isFav': instance.isFav,
    };
