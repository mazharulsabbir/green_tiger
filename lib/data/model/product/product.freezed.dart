// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
class _$ProductModelTearOff {
  const _$ProductModelTearOff();

  _ProductModel call(
      {int? id,
      String? name,
      String? type,
      @JsonKey(name: 'website_url')
          String? websiteUrl,
      @JsonKey(name: 'description')
          String? description,
      @JsonKey(name: 'description_sale')
          String? saleDescription,
      @JsonKey(name: 'list_price', defaultValue: 0.0)
          double? price,
      @JsonKey(name: 'discount', defaultValue: 0.0)
          double? discount,
      @JsonKey(name: 'qty_available', defaultValue: 0.0)
          double? qtyAvailable,
      @JsonKey(name: 'image_1920')
          String? imageUrl,
      @JsonKey(name: 'rating_avg', defaultValue: 0.0)
          double? rating,
      @JsonKey(name: 'rating_count', defaultValue: 0.0)
          double? ratingCount,
      @JsonKey(name: 'is_product_variant', defaultValue: false)
          bool? isProductVariant,
      @JsonKey(name: 'rating_ids')
          List<Rating>? ratings,
      @JsonKey(name: 'currency_id')
          List<Currency>? currency,
      @JsonKey(name: 'cost_currency_id')
          List<Currency>? costCurrency,
      @JsonKey(name: 'cost_method')
          String? costMethod,
      @JsonKey(name: 'custom_message')
          String? customMessage,
      @JsonKey(name: 'create_date')
          String? createDate,
      @JsonKey(name: 'alternative_product_ids')
          List<AlternativeProducts>? alternativeProducts,
      @JsonKey(name: 'product_template_image_ids')
          List<ProductTemplateImage>? productTemplateImages,
      @JsonKey(name: 'product_variant_ids')
          List<ProductVariant>? productVariants,
      @JsonKey(name: 'attribute_line_ids')
          List<ProductAttribute>? productAttributes,
      @JsonKey(name: 'tab_line_ids')
          List<ProductTabLine>? itemDetails,
      bool? isFav}) {
    return _ProductModel(
      id: id,
      name: name,
      type: type,
      websiteUrl: websiteUrl,
      description: description,
      saleDescription: saleDescription,
      price: price,
      discount: discount,
      qtyAvailable: qtyAvailable,
      imageUrl: imageUrl,
      rating: rating,
      ratingCount: ratingCount,
      isProductVariant: isProductVariant,
      ratings: ratings,
      currency: currency,
      costCurrency: costCurrency,
      costMethod: costMethod,
      customMessage: customMessage,
      createDate: createDate,
      alternativeProducts: alternativeProducts,
      productTemplateImages: productTemplateImages,
      productVariants: productVariants,
      productAttributes: productAttributes,
      itemDetails: itemDetails,
      isFav: isFav,
    );
  }

  ProductModel fromJson(Map<String, Object?> json) {
    return ProductModel.fromJson(json);
  }
}

/// @nodoc
const $ProductModel = _$ProductModelTearOff();

/// @nodoc
mixin _$ProductModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'website_url')
  String? get websiteUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'description_sale')
  String? get saleDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'list_price', defaultValue: 0.0)
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount', defaultValue: 0.0)
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'qty_available', defaultValue: 0.0)
  double? get qtyAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_1920')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_avg', defaultValue: 0.0)
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_count', defaultValue: 0.0)
  double? get ratingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_product_variant', defaultValue: false)
  bool? get isProductVariant => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_ids')
  List<Rating>? get ratings => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_id')
  List<Currency>? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'cost_currency_id')
  List<Currency>? get costCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: 'cost_method')
  String? get costMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'custom_message')
  String? get customMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_date')
  String? get createDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'alternative_product_ids')
  List<AlternativeProducts>? get alternativeProducts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'product_template_image_ids')
  List<ProductTemplateImage>? get productTemplateImages =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'product_variant_ids')
  List<ProductVariant>? get productVariants =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'attribute_line_ids')
  List<ProductAttribute>? get productAttributes =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'tab_line_ids')
  List<ProductTabLine>? get itemDetails => throw _privateConstructorUsedError;
  bool? get isFav => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? type,
      @JsonKey(name: 'website_url')
          String? websiteUrl,
      @JsonKey(name: 'description')
          String? description,
      @JsonKey(name: 'description_sale')
          String? saleDescription,
      @JsonKey(name: 'list_price', defaultValue: 0.0)
          double? price,
      @JsonKey(name: 'discount', defaultValue: 0.0)
          double? discount,
      @JsonKey(name: 'qty_available', defaultValue: 0.0)
          double? qtyAvailable,
      @JsonKey(name: 'image_1920')
          String? imageUrl,
      @JsonKey(name: 'rating_avg', defaultValue: 0.0)
          double? rating,
      @JsonKey(name: 'rating_count', defaultValue: 0.0)
          double? ratingCount,
      @JsonKey(name: 'is_product_variant', defaultValue: false)
          bool? isProductVariant,
      @JsonKey(name: 'rating_ids')
          List<Rating>? ratings,
      @JsonKey(name: 'currency_id')
          List<Currency>? currency,
      @JsonKey(name: 'cost_currency_id')
          List<Currency>? costCurrency,
      @JsonKey(name: 'cost_method')
          String? costMethod,
      @JsonKey(name: 'custom_message')
          String? customMessage,
      @JsonKey(name: 'create_date')
          String? createDate,
      @JsonKey(name: 'alternative_product_ids')
          List<AlternativeProducts>? alternativeProducts,
      @JsonKey(name: 'product_template_image_ids')
          List<ProductTemplateImage>? productTemplateImages,
      @JsonKey(name: 'product_variant_ids')
          List<ProductVariant>? productVariants,
      @JsonKey(name: 'attribute_line_ids')
          List<ProductAttribute>? productAttributes,
      @JsonKey(name: 'tab_line_ids')
          List<ProductTabLine>? itemDetails,
      bool? isFav});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res> implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  final ProductModel _value;
  // ignore: unused_field
  final $Res Function(ProductModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? websiteUrl = freezed,
    Object? description = freezed,
    Object? saleDescription = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? qtyAvailable = freezed,
    Object? imageUrl = freezed,
    Object? rating = freezed,
    Object? ratingCount = freezed,
    Object? isProductVariant = freezed,
    Object? ratings = freezed,
    Object? currency = freezed,
    Object? costCurrency = freezed,
    Object? costMethod = freezed,
    Object? customMessage = freezed,
    Object? createDate = freezed,
    Object? alternativeProducts = freezed,
    Object? productTemplateImages = freezed,
    Object? productVariants = freezed,
    Object? productAttributes = freezed,
    Object? itemDetails = freezed,
    Object? isFav = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: websiteUrl == freezed
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      saleDescription: saleDescription == freezed
          ? _value.saleDescription
          : saleDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      qtyAvailable: qtyAvailable == freezed
          ? _value.qtyAvailable
          : qtyAvailable // ignore: cast_nullable_to_non_nullable
              as double?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingCount: ratingCount == freezed
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as double?,
      isProductVariant: isProductVariant == freezed
          ? _value.isProductVariant
          : isProductVariant // ignore: cast_nullable_to_non_nullable
              as bool?,
      ratings: ratings == freezed
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<Rating>?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as List<Currency>?,
      costCurrency: costCurrency == freezed
          ? _value.costCurrency
          : costCurrency // ignore: cast_nullable_to_non_nullable
              as List<Currency>?,
      costMethod: costMethod == freezed
          ? _value.costMethod
          : costMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      customMessage: customMessage == freezed
          ? _value.customMessage
          : customMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      alternativeProducts: alternativeProducts == freezed
          ? _value.alternativeProducts
          : alternativeProducts // ignore: cast_nullable_to_non_nullable
              as List<AlternativeProducts>?,
      productTemplateImages: productTemplateImages == freezed
          ? _value.productTemplateImages
          : productTemplateImages // ignore: cast_nullable_to_non_nullable
              as List<ProductTemplateImage>?,
      productVariants: productVariants == freezed
          ? _value.productVariants
          : productVariants // ignore: cast_nullable_to_non_nullable
              as List<ProductVariant>?,
      productAttributes: productAttributes == freezed
          ? _value.productAttributes
          : productAttributes // ignore: cast_nullable_to_non_nullable
              as List<ProductAttribute>?,
      itemDetails: itemDetails == freezed
          ? _value.itemDetails
          : itemDetails // ignore: cast_nullable_to_non_nullable
              as List<ProductTabLine>?,
      isFav: isFav == freezed
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(
          _ProductModel value, $Res Function(_ProductModel) then) =
      __$ProductModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? type,
      @JsonKey(name: 'website_url')
          String? websiteUrl,
      @JsonKey(name: 'description')
          String? description,
      @JsonKey(name: 'description_sale')
          String? saleDescription,
      @JsonKey(name: 'list_price', defaultValue: 0.0)
          double? price,
      @JsonKey(name: 'discount', defaultValue: 0.0)
          double? discount,
      @JsonKey(name: 'qty_available', defaultValue: 0.0)
          double? qtyAvailable,
      @JsonKey(name: 'image_1920')
          String? imageUrl,
      @JsonKey(name: 'rating_avg', defaultValue: 0.0)
          double? rating,
      @JsonKey(name: 'rating_count', defaultValue: 0.0)
          double? ratingCount,
      @JsonKey(name: 'is_product_variant', defaultValue: false)
          bool? isProductVariant,
      @JsonKey(name: 'rating_ids')
          List<Rating>? ratings,
      @JsonKey(name: 'currency_id')
          List<Currency>? currency,
      @JsonKey(name: 'cost_currency_id')
          List<Currency>? costCurrency,
      @JsonKey(name: 'cost_method')
          String? costMethod,
      @JsonKey(name: 'custom_message')
          String? customMessage,
      @JsonKey(name: 'create_date')
          String? createDate,
      @JsonKey(name: 'alternative_product_ids')
          List<AlternativeProducts>? alternativeProducts,
      @JsonKey(name: 'product_template_image_ids')
          List<ProductTemplateImage>? productTemplateImages,
      @JsonKey(name: 'product_variant_ids')
          List<ProductVariant>? productVariants,
      @JsonKey(name: 'attribute_line_ids')
          List<ProductAttribute>? productAttributes,
      @JsonKey(name: 'tab_line_ids')
          List<ProductTabLine>? itemDetails,
      bool? isFav});
}

/// @nodoc
class __$ProductModelCopyWithImpl<$Res> extends _$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(
      _ProductModel _value, $Res Function(_ProductModel) _then)
      : super(_value, (v) => _then(v as _ProductModel));

  @override
  _ProductModel get _value => super._value as _ProductModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? websiteUrl = freezed,
    Object? description = freezed,
    Object? saleDescription = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? qtyAvailable = freezed,
    Object? imageUrl = freezed,
    Object? rating = freezed,
    Object? ratingCount = freezed,
    Object? isProductVariant = freezed,
    Object? ratings = freezed,
    Object? currency = freezed,
    Object? costCurrency = freezed,
    Object? costMethod = freezed,
    Object? customMessage = freezed,
    Object? createDate = freezed,
    Object? alternativeProducts = freezed,
    Object? productTemplateImages = freezed,
    Object? productVariants = freezed,
    Object? productAttributes = freezed,
    Object? itemDetails = freezed,
    Object? isFav = freezed,
  }) {
    return _then(_ProductModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: websiteUrl == freezed
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      saleDescription: saleDescription == freezed
          ? _value.saleDescription
          : saleDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      qtyAvailable: qtyAvailable == freezed
          ? _value.qtyAvailable
          : qtyAvailable // ignore: cast_nullable_to_non_nullable
              as double?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingCount: ratingCount == freezed
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as double?,
      isProductVariant: isProductVariant == freezed
          ? _value.isProductVariant
          : isProductVariant // ignore: cast_nullable_to_non_nullable
              as bool?,
      ratings: ratings == freezed
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<Rating>?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as List<Currency>?,
      costCurrency: costCurrency == freezed
          ? _value.costCurrency
          : costCurrency // ignore: cast_nullable_to_non_nullable
              as List<Currency>?,
      costMethod: costMethod == freezed
          ? _value.costMethod
          : costMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      customMessage: customMessage == freezed
          ? _value.customMessage
          : customMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      alternativeProducts: alternativeProducts == freezed
          ? _value.alternativeProducts
          : alternativeProducts // ignore: cast_nullable_to_non_nullable
              as List<AlternativeProducts>?,
      productTemplateImages: productTemplateImages == freezed
          ? _value.productTemplateImages
          : productTemplateImages // ignore: cast_nullable_to_non_nullable
              as List<ProductTemplateImage>?,
      productVariants: productVariants == freezed
          ? _value.productVariants
          : productVariants // ignore: cast_nullable_to_non_nullable
              as List<ProductVariant>?,
      productAttributes: productAttributes == freezed
          ? _value.productAttributes
          : productAttributes // ignore: cast_nullable_to_non_nullable
              as List<ProductAttribute>?,
      itemDetails: itemDetails == freezed
          ? _value.itemDetails
          : itemDetails // ignore: cast_nullable_to_non_nullable
              as List<ProductTabLine>?,
      isFav: isFav == freezed
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel implements _ProductModel {
  _$_ProductModel(
      {this.id,
      this.name,
      this.type,
      @JsonKey(name: 'website_url')
          this.websiteUrl,
      @JsonKey(name: 'description')
          this.description,
      @JsonKey(name: 'description_sale')
          this.saleDescription,
      @JsonKey(name: 'list_price', defaultValue: 0.0)
          this.price,
      @JsonKey(name: 'discount', defaultValue: 0.0)
          this.discount,
      @JsonKey(name: 'qty_available', defaultValue: 0.0)
          this.qtyAvailable,
      @JsonKey(name: 'image_1920')
          this.imageUrl,
      @JsonKey(name: 'rating_avg', defaultValue: 0.0)
          this.rating,
      @JsonKey(name: 'rating_count', defaultValue: 0.0)
          this.ratingCount,
      @JsonKey(name: 'is_product_variant', defaultValue: false)
          this.isProductVariant,
      @JsonKey(name: 'rating_ids')
          this.ratings,
      @JsonKey(name: 'currency_id')
          this.currency,
      @JsonKey(name: 'cost_currency_id')
          this.costCurrency,
      @JsonKey(name: 'cost_method')
          this.costMethod,
      @JsonKey(name: 'custom_message')
          this.customMessage,
      @JsonKey(name: 'create_date')
          this.createDate,
      @JsonKey(name: 'alternative_product_ids')
          this.alternativeProducts,
      @JsonKey(name: 'product_template_image_ids')
          this.productTemplateImages,
      @JsonKey(name: 'product_variant_ids')
          this.productVariants,
      @JsonKey(name: 'attribute_line_ids')
          this.productAttributes,
      @JsonKey(name: 'tab_line_ids')
          this.itemDetails,
      this.isFav});

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  @JsonKey(name: 'website_url')
  final String? websiteUrl;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'description_sale')
  final String? saleDescription;
  @override
  @JsonKey(name: 'list_price', defaultValue: 0.0)
  final double? price;
  @override
  @JsonKey(name: 'discount', defaultValue: 0.0)
  final double? discount;
  @override
  @JsonKey(name: 'qty_available', defaultValue: 0.0)
  final double? qtyAvailable;
  @override
  @JsonKey(name: 'image_1920')
  final String? imageUrl;
  @override
  @JsonKey(name: 'rating_avg', defaultValue: 0.0)
  final double? rating;
  @override
  @JsonKey(name: 'rating_count', defaultValue: 0.0)
  final double? ratingCount;
  @override
  @JsonKey(name: 'is_product_variant', defaultValue: false)
  final bool? isProductVariant;
  @override
  @JsonKey(name: 'rating_ids')
  final List<Rating>? ratings;
  @override
  @JsonKey(name: 'currency_id')
  final List<Currency>? currency;
  @override
  @JsonKey(name: 'cost_currency_id')
  final List<Currency>? costCurrency;
  @override
  @JsonKey(name: 'cost_method')
  final String? costMethod;
  @override
  @JsonKey(name: 'custom_message')
  final String? customMessage;
  @override
  @JsonKey(name: 'create_date')
  final String? createDate;
  @override
  @JsonKey(name: 'alternative_product_ids')
  final List<AlternativeProducts>? alternativeProducts;
  @override
  @JsonKey(name: 'product_template_image_ids')
  final List<ProductTemplateImage>? productTemplateImages;
  @override
  @JsonKey(name: 'product_variant_ids')
  final List<ProductVariant>? productVariants;
  @override
  @JsonKey(name: 'attribute_line_ids')
  final List<ProductAttribute>? productAttributes;
  @override
  @JsonKey(name: 'tab_line_ids')
  final List<ProductTabLine>? itemDetails;
  @override
  final bool? isFav;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, type: $type, websiteUrl: $websiteUrl, description: $description, saleDescription: $saleDescription, price: $price, discount: $discount, qtyAvailable: $qtyAvailable, imageUrl: $imageUrl, rating: $rating, ratingCount: $ratingCount, isProductVariant: $isProductVariant, ratings: $ratings, currency: $currency, costCurrency: $costCurrency, costMethod: $costMethod, customMessage: $customMessage, createDate: $createDate, alternativeProducts: $alternativeProducts, productTemplateImages: $productTemplateImages, productVariants: $productVariants, productAttributes: $productAttributes, itemDetails: $itemDetails, isFav: $isFav)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.websiteUrl, websiteUrl) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.saleDescription, saleDescription) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality()
                .equals(other.qtyAvailable, qtyAvailable) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality()
                .equals(other.ratingCount, ratingCount) &&
            const DeepCollectionEquality()
                .equals(other.isProductVariant, isProductVariant) &&
            const DeepCollectionEquality().equals(other.ratings, ratings) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.costCurrency, costCurrency) &&
            const DeepCollectionEquality()
                .equals(other.costMethod, costMethod) &&
            const DeepCollectionEquality()
                .equals(other.customMessage, customMessage) &&
            const DeepCollectionEquality()
                .equals(other.createDate, createDate) &&
            const DeepCollectionEquality()
                .equals(other.alternativeProducts, alternativeProducts) &&
            const DeepCollectionEquality()
                .equals(other.productTemplateImages, productTemplateImages) &&
            const DeepCollectionEquality()
                .equals(other.productVariants, productVariants) &&
            const DeepCollectionEquality()
                .equals(other.productAttributes, productAttributes) &&
            const DeepCollectionEquality()
                .equals(other.itemDetails, itemDetails) &&
            const DeepCollectionEquality().equals(other.isFav, isFav));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(websiteUrl),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(saleDescription),
        const DeepCollectionEquality().hash(price),
        const DeepCollectionEquality().hash(discount),
        const DeepCollectionEquality().hash(qtyAvailable),
        const DeepCollectionEquality().hash(imageUrl),
        const DeepCollectionEquality().hash(rating),
        const DeepCollectionEquality().hash(ratingCount),
        const DeepCollectionEquality().hash(isProductVariant),
        const DeepCollectionEquality().hash(ratings),
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(costCurrency),
        const DeepCollectionEquality().hash(costMethod),
        const DeepCollectionEquality().hash(customMessage),
        const DeepCollectionEquality().hash(createDate),
        const DeepCollectionEquality().hash(alternativeProducts),
        const DeepCollectionEquality().hash(productTemplateImages),
        const DeepCollectionEquality().hash(productVariants),
        const DeepCollectionEquality().hash(productAttributes),
        const DeepCollectionEquality().hash(itemDetails),
        const DeepCollectionEquality().hash(isFav)
      ]);

  @JsonKey(ignore: true)
  @override
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(this);
  }
}

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
      {int? id,
      String? name,
      String? type,
      @JsonKey(name: 'website_url')
          String? websiteUrl,
      @JsonKey(name: 'description')
          String? description,
      @JsonKey(name: 'description_sale')
          String? saleDescription,
      @JsonKey(name: 'list_price', defaultValue: 0.0)
          double? price,
      @JsonKey(name: 'discount', defaultValue: 0.0)
          double? discount,
      @JsonKey(name: 'qty_available', defaultValue: 0.0)
          double? qtyAvailable,
      @JsonKey(name: 'image_1920')
          String? imageUrl,
      @JsonKey(name: 'rating_avg', defaultValue: 0.0)
          double? rating,
      @JsonKey(name: 'rating_count', defaultValue: 0.0)
          double? ratingCount,
      @JsonKey(name: 'is_product_variant', defaultValue: false)
          bool? isProductVariant,
      @JsonKey(name: 'rating_ids')
          List<Rating>? ratings,
      @JsonKey(name: 'currency_id')
          List<Currency>? currency,
      @JsonKey(name: 'cost_currency_id')
          List<Currency>? costCurrency,
      @JsonKey(name: 'cost_method')
          String? costMethod,
      @JsonKey(name: 'custom_message')
          String? customMessage,
      @JsonKey(name: 'create_date')
          String? createDate,
      @JsonKey(name: 'alternative_product_ids')
          List<AlternativeProducts>? alternativeProducts,
      @JsonKey(name: 'product_template_image_ids')
          List<ProductTemplateImage>? productTemplateImages,
      @JsonKey(name: 'product_variant_ids')
          List<ProductVariant>? productVariants,
      @JsonKey(name: 'attribute_line_ids')
          List<ProductAttribute>? productAttributes,
      @JsonKey(name: 'tab_line_ids')
          List<ProductTabLine>? itemDetails,
      bool? isFav}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get type;
  @override
  @JsonKey(name: 'website_url')
  String? get websiteUrl;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'description_sale')
  String? get saleDescription;
  @override
  @JsonKey(name: 'list_price', defaultValue: 0.0)
  double? get price;
  @override
  @JsonKey(name: 'discount', defaultValue: 0.0)
  double? get discount;
  @override
  @JsonKey(name: 'qty_available', defaultValue: 0.0)
  double? get qtyAvailable;
  @override
  @JsonKey(name: 'image_1920')
  String? get imageUrl;
  @override
  @JsonKey(name: 'rating_avg', defaultValue: 0.0)
  double? get rating;
  @override
  @JsonKey(name: 'rating_count', defaultValue: 0.0)
  double? get ratingCount;
  @override
  @JsonKey(name: 'is_product_variant', defaultValue: false)
  bool? get isProductVariant;
  @override
  @JsonKey(name: 'rating_ids')
  List<Rating>? get ratings;
  @override
  @JsonKey(name: 'currency_id')
  List<Currency>? get currency;
  @override
  @JsonKey(name: 'cost_currency_id')
  List<Currency>? get costCurrency;
  @override
  @JsonKey(name: 'cost_method')
  String? get costMethod;
  @override
  @JsonKey(name: 'custom_message')
  String? get customMessage;
  @override
  @JsonKey(name: 'create_date')
  String? get createDate;
  @override
  @JsonKey(name: 'alternative_product_ids')
  List<AlternativeProducts>? get alternativeProducts;
  @override
  @JsonKey(name: 'product_template_image_ids')
  List<ProductTemplateImage>? get productTemplateImages;
  @override
  @JsonKey(name: 'product_variant_ids')
  List<ProductVariant>? get productVariants;
  @override
  @JsonKey(name: 'attribute_line_ids')
  List<ProductAttribute>? get productAttributes;
  @override
  @JsonKey(name: 'tab_line_ids')
  List<ProductTabLine>? get itemDetails;
  @override
  bool? get isFav;
  @override
  @JsonKey(ignore: true)
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
class _$RatingTearOff {
  const _$RatingTearOff();

  _Rating call(
      {int? id,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: 'consumed', defaultValue: false) bool? consumed,
      @JsonKey(name: 'create_date') String? createDate,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'feedback') String? feedback,
      @JsonKey(name: 'rating_image') String? image,
      @JsonKey(name: 'rating_text') String? ratingText}) {
    return _Rating(
      id: id,
      rating: rating,
      consumed: consumed,
      createDate: createDate,
      displayName: displayName,
      feedback: feedback,
      image: image,
      ratingText: ratingText,
    );
  }

  Rating fromJson(Map<String, Object?> json) {
    return Rating.fromJson(json);
  }
}

/// @nodoc
const $Rating = _$RatingTearOff();

/// @nodoc
mixin _$Rating {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'consumed', defaultValue: false)
  bool? get consumed => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_date')
  String? get createDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'feedback')
  String? get feedback => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_text')
  String? get ratingText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: 'consumed', defaultValue: false) bool? consumed,
      @JsonKey(name: 'create_date') String? createDate,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'feedback') String? feedback,
      @JsonKey(name: 'rating_image') String? image,
      @JsonKey(name: 'rating_text') String? ratingText});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res> implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  final Rating _value;
  // ignore: unused_field
  final $Res Function(Rating) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? rating = freezed,
    Object? consumed = freezed,
    Object? createDate = freezed,
    Object? displayName = freezed,
    Object? feedback = freezed,
    Object? image = freezed,
    Object? ratingText = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      consumed: consumed == freezed
          ? _value.consumed
          : consumed // ignore: cast_nullable_to_non_nullable
              as bool?,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingText: ratingText == freezed
          ? _value.ratingText
          : ratingText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RatingCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$RatingCopyWith(_Rating value, $Res Function(_Rating) then) =
      __$RatingCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: 'consumed', defaultValue: false) bool? consumed,
      @JsonKey(name: 'create_date') String? createDate,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'feedback') String? feedback,
      @JsonKey(name: 'rating_image') String? image,
      @JsonKey(name: 'rating_text') String? ratingText});
}

/// @nodoc
class __$RatingCopyWithImpl<$Res> extends _$RatingCopyWithImpl<$Res>
    implements _$RatingCopyWith<$Res> {
  __$RatingCopyWithImpl(_Rating _value, $Res Function(_Rating) _then)
      : super(_value, (v) => _then(v as _Rating));

  @override
  _Rating get _value => super._value as _Rating;

  @override
  $Res call({
    Object? id = freezed,
    Object? rating = freezed,
    Object? consumed = freezed,
    Object? createDate = freezed,
    Object? displayName = freezed,
    Object? feedback = freezed,
    Object? image = freezed,
    Object? ratingText = freezed,
  }) {
    return _then(_Rating(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      consumed: consumed == freezed
          ? _value.consumed
          : consumed // ignore: cast_nullable_to_non_nullable
              as bool?,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingText: ratingText == freezed
          ? _value.ratingText
          : ratingText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rating implements _Rating {
  _$_Rating(
      {this.id,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'consumed', defaultValue: false) this.consumed,
      @JsonKey(name: 'create_date') this.createDate,
      @JsonKey(name: 'display_name') this.displayName,
      @JsonKey(name: 'feedback') this.feedback,
      @JsonKey(name: 'rating_image') this.image,
      @JsonKey(name: 'rating_text') this.ratingText});

  factory _$_Rating.fromJson(Map<String, dynamic> json) =>
      _$$_RatingFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'rating')
  final double? rating;
  @override
  @JsonKey(name: 'consumed', defaultValue: false)
  final bool? consumed;
  @override
  @JsonKey(name: 'create_date')
  final String? createDate;
  @override
  @JsonKey(name: 'display_name')
  final String? displayName;
  @override
  @JsonKey(name: 'feedback')
  final String? feedback;
  @override
  @JsonKey(name: 'rating_image')
  final String? image;
  @override
  @JsonKey(name: 'rating_text')
  final String? ratingText;

  @override
  String toString() {
    return 'Rating(id: $id, rating: $rating, consumed: $consumed, createDate: $createDate, displayName: $displayName, feedback: $feedback, image: $image, ratingText: $ratingText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Rating &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.consumed, consumed) &&
            const DeepCollectionEquality()
                .equals(other.createDate, createDate) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.feedback, feedback) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.ratingText, ratingText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(consumed),
      const DeepCollectionEquality().hash(createDate),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(feedback),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(ratingText));

  @JsonKey(ignore: true)
  @override
  _$RatingCopyWith<_Rating> get copyWith =>
      __$RatingCopyWithImpl<_Rating>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingToJson(this);
  }
}

abstract class _Rating implements Rating {
  factory _Rating(
      {int? id,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: 'consumed', defaultValue: false) bool? consumed,
      @JsonKey(name: 'create_date') String? createDate,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'feedback') String? feedback,
      @JsonKey(name: 'rating_image') String? image,
      @JsonKey(name: 'rating_text') String? ratingText}) = _$_Rating;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$_Rating.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'rating')
  double? get rating;
  @override
  @JsonKey(name: 'consumed', defaultValue: false)
  bool? get consumed;
  @override
  @JsonKey(name: 'create_date')
  String? get createDate;
  @override
  @JsonKey(name: 'display_name')
  String? get displayName;
  @override
  @JsonKey(name: 'feedback')
  String? get feedback;
  @override
  @JsonKey(name: 'rating_image')
  String? get image;
  @override
  @JsonKey(name: 'rating_text')
  String? get ratingText;
  @override
  @JsonKey(ignore: true)
  _$RatingCopyWith<_Rating> get copyWith => throw _privateConstructorUsedError;
}

ProductTemplateImage _$ProductTemplateImageFromJson(Map<String, dynamic> json) {
  return _ProductTemplateImage.fromJson(json);
}

/// @nodoc
class _$ProductTemplateImageTearOff {
  const _$ProductTemplateImageTearOff();

  _ProductTemplateImage call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image_1920') String? imageUrl}) {
    return _ProductTemplateImage(
      id: id,
      name: name,
      imageUrl: imageUrl,
    );
  }

  ProductTemplateImage fromJson(Map<String, Object?> json) {
    return ProductTemplateImage.fromJson(json);
  }
}

/// @nodoc
const $ProductTemplateImage = _$ProductTemplateImageTearOff();

/// @nodoc
mixin _$ProductTemplateImage {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_1920')
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductTemplateImageCopyWith<ProductTemplateImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTemplateImageCopyWith<$Res> {
  factory $ProductTemplateImageCopyWith(ProductTemplateImage value,
          $Res Function(ProductTemplateImage) then) =
      _$ProductTemplateImageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image_1920') String? imageUrl});
}

/// @nodoc
class _$ProductTemplateImageCopyWithImpl<$Res>
    implements $ProductTemplateImageCopyWith<$Res> {
  _$ProductTemplateImageCopyWithImpl(this._value, this._then);

  final ProductTemplateImage _value;
  // ignore: unused_field
  final $Res Function(ProductTemplateImage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProductTemplateImageCopyWith<$Res>
    implements $ProductTemplateImageCopyWith<$Res> {
  factory _$ProductTemplateImageCopyWith(_ProductTemplateImage value,
          $Res Function(_ProductTemplateImage) then) =
      __$ProductTemplateImageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image_1920') String? imageUrl});
}

/// @nodoc
class __$ProductTemplateImageCopyWithImpl<$Res>
    extends _$ProductTemplateImageCopyWithImpl<$Res>
    implements _$ProductTemplateImageCopyWith<$Res> {
  __$ProductTemplateImageCopyWithImpl(
      _ProductTemplateImage _value, $Res Function(_ProductTemplateImage) _then)
      : super(_value, (v) => _then(v as _ProductTemplateImage));

  @override
  _ProductTemplateImage get _value => super._value as _ProductTemplateImage;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_ProductTemplateImage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductTemplateImage implements _ProductTemplateImage {
  _$_ProductTemplateImage(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'image_1920') this.imageUrl});

  factory _$_ProductTemplateImage.fromJson(Map<String, dynamic> json) =>
      _$$_ProductTemplateImageFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'image_1920')
  final String? imageUrl;

  @override
  String toString() {
    return 'ProductTemplateImage(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductTemplateImage &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$ProductTemplateImageCopyWith<_ProductTemplateImage> get copyWith =>
      __$ProductTemplateImageCopyWithImpl<_ProductTemplateImage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductTemplateImageToJson(this);
  }
}

abstract class _ProductTemplateImage implements ProductTemplateImage {
  factory _ProductTemplateImage(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image_1920') String? imageUrl}) = _$_ProductTemplateImage;

  factory _ProductTemplateImage.fromJson(Map<String, dynamic> json) =
      _$_ProductTemplateImage.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'image_1920')
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$ProductTemplateImageCopyWith<_ProductTemplateImage> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductVariant _$ProductVariantFromJson(Map<String, dynamic> json) {
  return _ProductVariant.fromJson(json);
}

/// @nodoc
class _$ProductVariantTearOff {
  const _$ProductVariantTearOff();

  _ProductVariant call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'stock_state') String? stockState,
      @JsonKey(name: 'image_1920') String? imageUrl,
      @JsonKey(name: 'list_price') double? price}) {
    return _ProductVariant(
      id: id,
      name: name,
      stockState: stockState,
      imageUrl: imageUrl,
      price: price,
    );
  }

  ProductVariant fromJson(Map<String, Object?> json) {
    return ProductVariant.fromJson(json);
  }
}

/// @nodoc
const $ProductVariant = _$ProductVariantTearOff();

/// @nodoc
mixin _$ProductVariant {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock_state')
  String? get stockState => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_1920')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'list_price')
  double? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductVariantCopyWith<ProductVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariantCopyWith<$Res> {
  factory $ProductVariantCopyWith(
          ProductVariant value, $Res Function(ProductVariant) then) =
      _$ProductVariantCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'stock_state') String? stockState,
      @JsonKey(name: 'image_1920') String? imageUrl,
      @JsonKey(name: 'list_price') double? price});
}

/// @nodoc
class _$ProductVariantCopyWithImpl<$Res>
    implements $ProductVariantCopyWith<$Res> {
  _$ProductVariantCopyWithImpl(this._value, this._then);

  final ProductVariant _value;
  // ignore: unused_field
  final $Res Function(ProductVariant) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? stockState = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      stockState: stockState == freezed
          ? _value.stockState
          : stockState // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$ProductVariantCopyWith<$Res>
    implements $ProductVariantCopyWith<$Res> {
  factory _$ProductVariantCopyWith(
          _ProductVariant value, $Res Function(_ProductVariant) then) =
      __$ProductVariantCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'stock_state') String? stockState,
      @JsonKey(name: 'image_1920') String? imageUrl,
      @JsonKey(name: 'list_price') double? price});
}

/// @nodoc
class __$ProductVariantCopyWithImpl<$Res>
    extends _$ProductVariantCopyWithImpl<$Res>
    implements _$ProductVariantCopyWith<$Res> {
  __$ProductVariantCopyWithImpl(
      _ProductVariant _value, $Res Function(_ProductVariant) _then)
      : super(_value, (v) => _then(v as _ProductVariant));

  @override
  _ProductVariant get _value => super._value as _ProductVariant;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? stockState = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
  }) {
    return _then(_ProductVariant(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      stockState: stockState == freezed
          ? _value.stockState
          : stockState // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductVariant implements _ProductVariant {
  _$_ProductVariant(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'stock_state') this.stockState,
      @JsonKey(name: 'image_1920') this.imageUrl,
      @JsonKey(name: 'list_price') this.price});

  factory _$_ProductVariant.fromJson(Map<String, dynamic> json) =>
      _$$_ProductVariantFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'stock_state')
  final String? stockState;
  @override
  @JsonKey(name: 'image_1920')
  final String? imageUrl;
  @override
  @JsonKey(name: 'list_price')
  final double? price;

  @override
  String toString() {
    return 'ProductVariant(id: $id, name: $name, stockState: $stockState, imageUrl: $imageUrl, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductVariant &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.stockState, stockState) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(stockState),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$ProductVariantCopyWith<_ProductVariant> get copyWith =>
      __$ProductVariantCopyWithImpl<_ProductVariant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductVariantToJson(this);
  }
}

abstract class _ProductVariant implements ProductVariant {
  factory _ProductVariant(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'stock_state') String? stockState,
      @JsonKey(name: 'image_1920') String? imageUrl,
      @JsonKey(name: 'list_price') double? price}) = _$_ProductVariant;

  factory _ProductVariant.fromJson(Map<String, dynamic> json) =
      _$_ProductVariant.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'stock_state')
  String? get stockState;
  @override
  @JsonKey(name: 'image_1920')
  String? get imageUrl;
  @override
  @JsonKey(name: 'list_price')
  double? get price;
  @override
  @JsonKey(ignore: true)
  _$ProductVariantCopyWith<_ProductVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductAttribute _$ProductAttributeFromJson(Map<String, dynamic> json) {
  return _ProductAttribute.fromJson(json);
}

/// @nodoc
class _$ProductAttributeTearOff {
  const _$ProductAttributeTearOff();

  _ProductAttribute call(
      {@JsonKey(name: 'attribute_id') Attribute? attribute,
      @JsonKey(name: 'value_ids') AttributeValue? attributeValue}) {
    return _ProductAttribute(
      attribute: attribute,
      attributeValue: attributeValue,
    );
  }

  ProductAttribute fromJson(Map<String, Object?> json) {
    return ProductAttribute.fromJson(json);
  }
}

/// @nodoc
const $ProductAttribute = _$ProductAttributeTearOff();

/// @nodoc
mixin _$ProductAttribute {
  @JsonKey(name: 'attribute_id')
  Attribute? get attribute => throw _privateConstructorUsedError;
  @JsonKey(name: 'value_ids')
  AttributeValue? get attributeValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductAttributeCopyWith<ProductAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAttributeCopyWith<$Res> {
  factory $ProductAttributeCopyWith(
          ProductAttribute value, $Res Function(ProductAttribute) then) =
      _$ProductAttributeCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'attribute_id') Attribute? attribute,
      @JsonKey(name: 'value_ids') AttributeValue? attributeValue});

  $AttributeCopyWith<$Res>? get attribute;
  $AttributeValueCopyWith<$Res>? get attributeValue;
}

/// @nodoc
class _$ProductAttributeCopyWithImpl<$Res>
    implements $ProductAttributeCopyWith<$Res> {
  _$ProductAttributeCopyWithImpl(this._value, this._then);

  final ProductAttribute _value;
  // ignore: unused_field
  final $Res Function(ProductAttribute) _then;

  @override
  $Res call({
    Object? attribute = freezed,
    Object? attributeValue = freezed,
  }) {
    return _then(_value.copyWith(
      attribute: attribute == freezed
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as Attribute?,
      attributeValue: attributeValue == freezed
          ? _value.attributeValue
          : attributeValue // ignore: cast_nullable_to_non_nullable
              as AttributeValue?,
    ));
  }

  @override
  $AttributeCopyWith<$Res>? get attribute {
    if (_value.attribute == null) {
      return null;
    }

    return $AttributeCopyWith<$Res>(_value.attribute!, (value) {
      return _then(_value.copyWith(attribute: value));
    });
  }

  @override
  $AttributeValueCopyWith<$Res>? get attributeValue {
    if (_value.attributeValue == null) {
      return null;
    }

    return $AttributeValueCopyWith<$Res>(_value.attributeValue!, (value) {
      return _then(_value.copyWith(attributeValue: value));
    });
  }
}

/// @nodoc
abstract class _$ProductAttributeCopyWith<$Res>
    implements $ProductAttributeCopyWith<$Res> {
  factory _$ProductAttributeCopyWith(
          _ProductAttribute value, $Res Function(_ProductAttribute) then) =
      __$ProductAttributeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'attribute_id') Attribute? attribute,
      @JsonKey(name: 'value_ids') AttributeValue? attributeValue});

  @override
  $AttributeCopyWith<$Res>? get attribute;
  @override
  $AttributeValueCopyWith<$Res>? get attributeValue;
}

/// @nodoc
class __$ProductAttributeCopyWithImpl<$Res>
    extends _$ProductAttributeCopyWithImpl<$Res>
    implements _$ProductAttributeCopyWith<$Res> {
  __$ProductAttributeCopyWithImpl(
      _ProductAttribute _value, $Res Function(_ProductAttribute) _then)
      : super(_value, (v) => _then(v as _ProductAttribute));

  @override
  _ProductAttribute get _value => super._value as _ProductAttribute;

  @override
  $Res call({
    Object? attribute = freezed,
    Object? attributeValue = freezed,
  }) {
    return _then(_ProductAttribute(
      attribute: attribute == freezed
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as Attribute?,
      attributeValue: attributeValue == freezed
          ? _value.attributeValue
          : attributeValue // ignore: cast_nullable_to_non_nullable
              as AttributeValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductAttribute implements _ProductAttribute {
  _$_ProductAttribute(
      {@JsonKey(name: 'attribute_id') this.attribute,
      @JsonKey(name: 'value_ids') this.attributeValue});

  factory _$_ProductAttribute.fromJson(Map<String, dynamic> json) =>
      _$$_ProductAttributeFromJson(json);

  @override
  @JsonKey(name: 'attribute_id')
  final Attribute? attribute;
  @override
  @JsonKey(name: 'value_ids')
  final AttributeValue? attributeValue;

  @override
  String toString() {
    return 'ProductAttribute(attribute: $attribute, attributeValue: $attributeValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductAttribute &&
            const DeepCollectionEquality().equals(other.attribute, attribute) &&
            const DeepCollectionEquality()
                .equals(other.attributeValue, attributeValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(attribute),
      const DeepCollectionEquality().hash(attributeValue));

  @JsonKey(ignore: true)
  @override
  _$ProductAttributeCopyWith<_ProductAttribute> get copyWith =>
      __$ProductAttributeCopyWithImpl<_ProductAttribute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductAttributeToJson(this);
  }
}

abstract class _ProductAttribute implements ProductAttribute {
  factory _ProductAttribute(
          {@JsonKey(name: 'attribute_id') Attribute? attribute,
          @JsonKey(name: 'value_ids') AttributeValue? attributeValue}) =
      _$_ProductAttribute;

  factory _ProductAttribute.fromJson(Map<String, dynamic> json) =
      _$_ProductAttribute.fromJson;

  @override
  @JsonKey(name: 'attribute_id')
  Attribute? get attribute;
  @override
  @JsonKey(name: 'value_ids')
  AttributeValue? get attributeValue;
  @override
  @JsonKey(ignore: true)
  _$ProductAttributeCopyWith<_ProductAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

Attribute _$AttributeFromJson(Map<String, dynamic> json) {
  return _Attribute.fromJson(json);
}

/// @nodoc
class _$AttributeTearOff {
  const _$AttributeTearOff();

  _Attribute call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name}) {
    return _Attribute(
      id: id,
      name: name,
    );
  }

  Attribute fromJson(Map<String, Object?> json) {
    return Attribute.fromJson(json);
  }
}

/// @nodoc
const $Attribute = _$AttributeTearOff();

/// @nodoc
mixin _$Attribute {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributeCopyWith<Attribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeCopyWith<$Res> {
  factory $AttributeCopyWith(Attribute value, $Res Function(Attribute) then) =
      _$AttributeCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$AttributeCopyWithImpl<$Res> implements $AttributeCopyWith<$Res> {
  _$AttributeCopyWithImpl(this._value, this._then);

  final Attribute _value;
  // ignore: unused_field
  final $Res Function(Attribute) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AttributeCopyWith<$Res> implements $AttributeCopyWith<$Res> {
  factory _$AttributeCopyWith(
          _Attribute value, $Res Function(_Attribute) then) =
      __$AttributeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$AttributeCopyWithImpl<$Res> extends _$AttributeCopyWithImpl<$Res>
    implements _$AttributeCopyWith<$Res> {
  __$AttributeCopyWithImpl(_Attribute _value, $Res Function(_Attribute) _then)
      : super(_value, (v) => _then(v as _Attribute));

  @override
  _Attribute get _value => super._value as _Attribute;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Attribute(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attribute implements _Attribute {
  _$_Attribute(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$_Attribute.fromJson(Map<String, dynamic> json) =>
      _$$_AttributeFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'Attribute(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Attribute &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$AttributeCopyWith<_Attribute> get copyWith =>
      __$AttributeCopyWithImpl<_Attribute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributeToJson(this);
  }
}

abstract class _Attribute implements Attribute {
  factory _Attribute(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name}) = _$_Attribute;

  factory _Attribute.fromJson(Map<String, dynamic> json) =
      _$_Attribute.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$AttributeCopyWith<_Attribute> get copyWith =>
      throw _privateConstructorUsedError;
}

AttributeValue _$AttributeValueFromJson(Map<String, dynamic> json) {
  return _AttributeValue.fromJson(json);
}

/// @nodoc
class _$AttributeValueTearOff {
  const _$AttributeValueTearOff();

  _AttributeValue call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'html_color') String? htmlColor}) {
    return _AttributeValue(
      id: id,
      name: name,
      htmlColor: htmlColor,
    );
  }

  AttributeValue fromJson(Map<String, Object?> json) {
    return AttributeValue.fromJson(json);
  }
}

/// @nodoc
const $AttributeValue = _$AttributeValueTearOff();

/// @nodoc
mixin _$AttributeValue {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_color')
  String? get htmlColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributeValueCopyWith<AttributeValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeValueCopyWith<$Res> {
  factory $AttributeValueCopyWith(
          AttributeValue value, $Res Function(AttributeValue) then) =
      _$AttributeValueCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'html_color') String? htmlColor});
}

/// @nodoc
class _$AttributeValueCopyWithImpl<$Res>
    implements $AttributeValueCopyWith<$Res> {
  _$AttributeValueCopyWithImpl(this._value, this._then);

  final AttributeValue _value;
  // ignore: unused_field
  final $Res Function(AttributeValue) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? htmlColor = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlColor: htmlColor == freezed
          ? _value.htmlColor
          : htmlColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AttributeValueCopyWith<$Res>
    implements $AttributeValueCopyWith<$Res> {
  factory _$AttributeValueCopyWith(
          _AttributeValue value, $Res Function(_AttributeValue) then) =
      __$AttributeValueCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'html_color') String? htmlColor});
}

/// @nodoc
class __$AttributeValueCopyWithImpl<$Res>
    extends _$AttributeValueCopyWithImpl<$Res>
    implements _$AttributeValueCopyWith<$Res> {
  __$AttributeValueCopyWithImpl(
      _AttributeValue _value, $Res Function(_AttributeValue) _then)
      : super(_value, (v) => _then(v as _AttributeValue));

  @override
  _AttributeValue get _value => super._value as _AttributeValue;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? htmlColor = freezed,
  }) {
    return _then(_AttributeValue(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlColor: htmlColor == freezed
          ? _value.htmlColor
          : htmlColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttributeValue implements _AttributeValue {
  _$_AttributeValue(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'html_color') this.htmlColor});

  factory _$_AttributeValue.fromJson(Map<String, dynamic> json) =>
      _$$_AttributeValueFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'html_color')
  final String? htmlColor;

  @override
  String toString() {
    return 'AttributeValue(id: $id, name: $name, htmlColor: $htmlColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttributeValue &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.htmlColor, htmlColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(htmlColor));

  @JsonKey(ignore: true)
  @override
  _$AttributeValueCopyWith<_AttributeValue> get copyWith =>
      __$AttributeValueCopyWithImpl<_AttributeValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributeValueToJson(this);
  }
}

abstract class _AttributeValue implements AttributeValue {
  factory _AttributeValue(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'html_color') String? htmlColor}) = _$_AttributeValue;

  factory _AttributeValue.fromJson(Map<String, dynamic> json) =
      _$_AttributeValue.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'html_color')
  String? get htmlColor;
  @override
  @JsonKey(ignore: true)
  _$AttributeValueCopyWith<_AttributeValue> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductTabLine _$ProductTabLineFromJson(Map<String, dynamic> json) {
  return _ProductTabLine.fromJson(json);
}

/// @nodoc
class _$ProductTabLineTearOff {
  const _$ProductTabLineTearOff();

  _ProductTabLine call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'sequence') int? sequence,
      @JsonKey(name: 'tab_content') String? tabContent,
      @JsonKey(name: 'tab_name') String? tabName}) {
    return _ProductTabLine(
      id: id,
      sequence: sequence,
      tabContent: tabContent,
      tabName: tabName,
    );
  }

  ProductTabLine fromJson(Map<String, Object?> json) {
    return ProductTabLine.fromJson(json);
  }
}

/// @nodoc
const $ProductTabLine = _$ProductTabLineTearOff();

/// @nodoc
mixin _$ProductTabLine {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'sequence')
  int? get sequence => throw _privateConstructorUsedError;
  @JsonKey(name: 'tab_content')
  String? get tabContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'tab_name')
  String? get tabName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductTabLineCopyWith<ProductTabLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTabLineCopyWith<$Res> {
  factory $ProductTabLineCopyWith(
          ProductTabLine value, $Res Function(ProductTabLine) then) =
      _$ProductTabLineCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'sequence') int? sequence,
      @JsonKey(name: 'tab_content') String? tabContent,
      @JsonKey(name: 'tab_name') String? tabName});
}

/// @nodoc
class _$ProductTabLineCopyWithImpl<$Res>
    implements $ProductTabLineCopyWith<$Res> {
  _$ProductTabLineCopyWithImpl(this._value, this._then);

  final ProductTabLine _value;
  // ignore: unused_field
  final $Res Function(ProductTabLine) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? sequence = freezed,
    Object? tabContent = freezed,
    Object? tabName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sequence: sequence == freezed
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      tabContent: tabContent == freezed
          ? _value.tabContent
          : tabContent // ignore: cast_nullable_to_non_nullable
              as String?,
      tabName: tabName == freezed
          ? _value.tabName
          : tabName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProductTabLineCopyWith<$Res>
    implements $ProductTabLineCopyWith<$Res> {
  factory _$ProductTabLineCopyWith(
          _ProductTabLine value, $Res Function(_ProductTabLine) then) =
      __$ProductTabLineCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'sequence') int? sequence,
      @JsonKey(name: 'tab_content') String? tabContent,
      @JsonKey(name: 'tab_name') String? tabName});
}

/// @nodoc
class __$ProductTabLineCopyWithImpl<$Res>
    extends _$ProductTabLineCopyWithImpl<$Res>
    implements _$ProductTabLineCopyWith<$Res> {
  __$ProductTabLineCopyWithImpl(
      _ProductTabLine _value, $Res Function(_ProductTabLine) _then)
      : super(_value, (v) => _then(v as _ProductTabLine));

  @override
  _ProductTabLine get _value => super._value as _ProductTabLine;

  @override
  $Res call({
    Object? id = freezed,
    Object? sequence = freezed,
    Object? tabContent = freezed,
    Object? tabName = freezed,
  }) {
    return _then(_ProductTabLine(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sequence: sequence == freezed
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      tabContent: tabContent == freezed
          ? _value.tabContent
          : tabContent // ignore: cast_nullable_to_non_nullable
              as String?,
      tabName: tabName == freezed
          ? _value.tabName
          : tabName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductTabLine implements _ProductTabLine {
  _$_ProductTabLine(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'sequence') this.sequence,
      @JsonKey(name: 'tab_content') this.tabContent,
      @JsonKey(name: 'tab_name') this.tabName});

  factory _$_ProductTabLine.fromJson(Map<String, dynamic> json) =>
      _$$_ProductTabLineFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'sequence')
  final int? sequence;
  @override
  @JsonKey(name: 'tab_content')
  final String? tabContent;
  @override
  @JsonKey(name: 'tab_name')
  final String? tabName;

  @override
  String toString() {
    return 'ProductTabLine(id: $id, sequence: $sequence, tabContent: $tabContent, tabName: $tabName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductTabLine &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.sequence, sequence) &&
            const DeepCollectionEquality()
                .equals(other.tabContent, tabContent) &&
            const DeepCollectionEquality().equals(other.tabName, tabName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(sequence),
      const DeepCollectionEquality().hash(tabContent),
      const DeepCollectionEquality().hash(tabName));

  @JsonKey(ignore: true)
  @override
  _$ProductTabLineCopyWith<_ProductTabLine> get copyWith =>
      __$ProductTabLineCopyWithImpl<_ProductTabLine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductTabLineToJson(this);
  }
}

abstract class _ProductTabLine implements ProductTabLine {
  factory _ProductTabLine(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'sequence') int? sequence,
      @JsonKey(name: 'tab_content') String? tabContent,
      @JsonKey(name: 'tab_name') String? tabName}) = _$_ProductTabLine;

  factory _ProductTabLine.fromJson(Map<String, dynamic> json) =
      _$_ProductTabLine.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'sequence')
  int? get sequence;
  @override
  @JsonKey(name: 'tab_content')
  String? get tabContent;
  @override
  @JsonKey(name: 'tab_name')
  String? get tabName;
  @override
  @JsonKey(ignore: true)
  _$ProductTabLineCopyWith<_ProductTabLine> get copyWith =>
      throw _privateConstructorUsedError;
}
