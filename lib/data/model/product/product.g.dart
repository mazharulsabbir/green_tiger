// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      websiteUrl: json['website_url'] as String?,
      description: json['description'] as String?,
      saleDescription: json['description_sale'] as String?,
      price: (json['list_price'] as num?)?.toDouble() ?? 0.0,
      discount: (json['discount'] as num?)?.toDouble() ?? 0.0,
      qtyAvailable: (json['qty_available'] as num?)?.toDouble() ?? 0.0,
      imageUrl: json['image_1920'] as String?,
      rating: (json['rating_avg'] as num?)?.toDouble() ?? 0.0,
      ratingCount: (json['rating_count'] as num?)?.toDouble() ?? 0.0,
      isProductVariant: json['is_product_variant'] as bool? ?? false,
      ratings: (json['rating_ids'] as List<dynamic>?)
          ?.map((e) => Rating.fromJson(e as Map<String, dynamic>))
          .toList(),
      currency: (json['currency_id'] as List<dynamic>?)
          ?.map((e) => Currency.fromJson(e as Map<String, dynamic>))
          .toList(),
      costCurrency: (json['cost_currency_id'] as List<dynamic>?)
          ?.map((e) => Currency.fromJson(e as Map<String, dynamic>))
          .toList(),
      costMethod: json['cost_method'] as String?,
      customMessage: json['custom_message'] as String?,
      createDate: json['create_date'] as String?,
      alternativeProducts: (json['alternative_product_ids'] as List<dynamic>?)
          ?.map((e) => AlternativeProducts.fromJson(e as Map<String, dynamic>))
          .toList(),
      productTemplateImages: (json['product_template_image_ids']
              as List<dynamic>?)
          ?.map((e) => ProductTemplateImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      productVariants: (json['product_variant_ids'] as List<dynamic>?)
          ?.map((e) => ProductVariant.fromJson(e as Map<String, dynamic>))
          .toList(),
      productAttributes: (json['attribute_line_ids'] as List<dynamic>?)
          ?.map((e) => ProductAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemDetails: (json['tab_line_ids'] as List<dynamic>?)
          ?.map((e) => ProductTabLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFav: json['isFav'] as bool?,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'website_url': instance.websiteUrl,
      'description': instance.description,
      'description_sale': instance.saleDescription,
      'list_price': instance.price,
      'discount': instance.discount,
      'qty_available': instance.qtyAvailable,
      'image_1920': instance.imageUrl,
      'rating_avg': instance.rating,
      'rating_count': instance.ratingCount,
      'is_product_variant': instance.isProductVariant,
      'rating_ids': instance.ratings,
      'currency_id': instance.currency,
      'cost_currency_id': instance.costCurrency,
      'cost_method': instance.costMethod,
      'custom_message': instance.customMessage,
      'create_date': instance.createDate,
      'alternative_product_ids': instance.alternativeProducts,
      'product_template_image_ids': instance.productTemplateImages,
      'product_variant_ids': instance.productVariants,
      'attribute_line_ids': instance.productAttributes,
      'tab_line_ids': instance.itemDetails,
      'isFav': instance.isFav,
    };

_$_Rating _$$_RatingFromJson(Map<String, dynamic> json) => _$_Rating(
      id: json['id'] as int?,
      rating: (json['rating'] as num?)?.toDouble(),
      consumed: json['consumed'] as bool? ?? false,
      createDate: json['create_date'] as String?,
      displayName: json['display_name'] as String?,
      feedback: json['feedback'] as String?,
      image: json['rating_image'] as String?,
      ratingText: json['rating_text'] as String?,
    );

Map<String, dynamic> _$$_RatingToJson(_$_Rating instance) => <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'consumed': instance.consumed,
      'create_date': instance.createDate,
      'display_name': instance.displayName,
      'feedback': instance.feedback,
      'rating_image': instance.image,
      'rating_text': instance.ratingText,
    };

_$_ProductTemplateImage _$$_ProductTemplateImageFromJson(
        Map<String, dynamic> json) =>
    _$_ProductTemplateImage(
      id: json['id'] as int?,
      name: json['name'] as String?,
      imageUrl: json['image_1920'] as String?,
    );

Map<String, dynamic> _$$_ProductTemplateImageToJson(
        _$_ProductTemplateImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_1920': instance.imageUrl,
    };

_$_ProductVariant _$$_ProductVariantFromJson(Map<String, dynamic> json) =>
    _$_ProductVariant(
      id: json['id'] as int?,
      name: json['name'] as String?,
      stockState: json['stock_state'] as String?,
      imageUrl: json['image_1920'] as String?,
      price: (json['list_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ProductVariantToJson(_$_ProductVariant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'stock_state': instance.stockState,
      'image_1920': instance.imageUrl,
      'list_price': instance.price,
    };

_$_ProductAttribute _$$_ProductAttributeFromJson(Map<String, dynamic> json) =>
    _$_ProductAttribute(
      attribute: json['attribute_id'] == null
          ? null
          : Attribute.fromJson(json['attribute_id'] as Map<String, dynamic>),
      attributeValue: json['value_ids'] == null
          ? null
          : AttributeValue.fromJson(json['value_ids'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductAttributeToJson(_$_ProductAttribute instance) =>
    <String, dynamic>{
      'attribute_id': instance.attribute,
      'value_ids': instance.attributeValue,
    };

_$_Attribute _$$_AttributeFromJson(Map<String, dynamic> json) => _$_Attribute(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_AttributeToJson(_$_Attribute instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_AttributeValue _$$_AttributeValueFromJson(Map<String, dynamic> json) =>
    _$_AttributeValue(
      id: json['id'] as int?,
      name: json['name'] as String?,
      htmlColor: json['html_color'] as String?,
    );

Map<String, dynamic> _$$_AttributeValueToJson(_$_AttributeValue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'html_color': instance.htmlColor,
    };

_$_ProductTabLine _$$_ProductTabLineFromJson(Map<String, dynamic> json) =>
    _$_ProductTabLine(
      id: json['id'] as int?,
      sequence: json['sequence'] as int?,
      tabContent: json['tab_content'] as String?,
      tabName: json['tab_name'] as String?,
    );

Map<String, dynamic> _$$_ProductTabLineToJson(_$_ProductTabLine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sequence': instance.sequence,
      'tab_content': instance.tabContent,
      'tab_name': instance.tabName,
    };
