import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_tiger/data/model/alternative_product/alternative_product.dart';
import 'package:green_tiger/data/model/country/country.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    int? id,
    String? name,
    String? type,
    @JsonKey(name: 'website_url') String? websiteUrl,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'description_sale') String? saleDescription,
    @JsonKey(name: 'list_price', defaultValue: 0.0) double? price,
    @JsonKey(name: 'discount', defaultValue: 0.0) double? discount,
    @JsonKey(name: 'qty_available', defaultValue: 0.0) double? qtyAvailable,
    @JsonKey(name: 'image_1920') String? imageUrl,
    @JsonKey(name: 'rating_avg', defaultValue: 0.0) double? rating,
    @JsonKey(name: 'rating_count', defaultValue: 0.0) double? ratingCount,
    @JsonKey(name: 'is_product_variant', defaultValue: false)
        bool? isProductVariant,
    @JsonKey(name: 'rating_ids') List<Rating>? ratings,
    @JsonKey(name: 'currency_id') List<Currency>? currency,
    @JsonKey(name: 'cost_currency_id') List<Currency>? costCurrency,
    @JsonKey(name: 'cost_method') String? costMethod,
    @JsonKey(name: 'custom_message') String? customMessage,
    @JsonKey(name: 'create_date') String? createDate,
    @JsonKey(name: 'alternative_product_ids')
        List<AlternativeProducts>? alternativeProducts,
    @JsonKey(name: 'product_template_image_ids')
        List<ProductTemplateImage>? productTemplateImages,
    @JsonKey(name: 'product_variant_ids') List<ProductVariant>? productVariants,
    @JsonKey(name: 'attribute_line_ids')
        List<ProductAttribute>? productAttributes,
    bool? isFav,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class Rating with _$Rating {
  factory Rating({
    int? id,
    @JsonKey(name: 'rating') double? rating,
    @JsonKey(name: 'consumed', defaultValue: false) bool? consumed,
    @JsonKey(name: 'create_date') String? createDate,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'feedback') String? feedback,
    @JsonKey(name: 'rating_image') String? image,
    @JsonKey(name: 'rating_text') String? ratingText,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}

@freezed
class ProductTemplateImage with _$ProductTemplateImage {
  factory ProductTemplateImage({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'image_1920') String? imageUrl,
  }) = _ProductTemplateImage;

  factory ProductTemplateImage.fromJson(Map<String, dynamic> json) =>
      _$ProductTemplateImageFromJson(json);
}

@freezed
class ProductVariant with _$ProductVariant {
  factory ProductVariant({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'stock_state') String? stockState,
    @JsonKey(name: 'image_1920') String? imageUrl,
    @JsonKey(name: 'list_price') double? price,
  }) = _ProductVariant;

  factory ProductVariant.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantFromJson(json);
}

@freezed
class ProductAttribute with _$ProductAttribute {
  factory ProductAttribute({
    @JsonKey(name: 'attribute_id') Attribute? attribute,
    @JsonKey(name: 'value_ids') AttributeValue? attributeValue,
  }) = _ProductAttribute;

  factory ProductAttribute.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeFromJson(json);
}

@freezed
class Attribute with _$Attribute {
  factory Attribute({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _Attribute;

  factory Attribute.fromJson(Map<String, dynamic> json) =>
      _$AttributeFromJson(json);
}

@freezed
class AttributeValue with _$AttributeValue {
  factory AttributeValue({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'html_color') String? htmlColor,
  }) = _AttributeValue;

  factory AttributeValue.fromJson(Map<String, dynamic> json) =>
      _$AttributeValueFromJson(json);
}
