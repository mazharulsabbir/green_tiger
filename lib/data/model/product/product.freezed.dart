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
      @JsonKey(name: 'list_price', defaultValue: 0.0)
          double? price,
      double? discount,
      @JsonKey(name: 'image_1920')
          String? imageUrl,
      @JsonKey(name: 'rating_avg', defaultValue: 0.0)
          double? rating,
      @JsonKey(name: 'rating_count', defaultValue: 0.0)
          double? ratingCount,
      @JsonKey(name: 'alternative_product_ids', defaultValue: null)
          List<AlternativeProducts>? alternativeProducts,
      bool? isFav}) {
    return _ProductModel(
      id: id,
      name: name,
      price: price,
      discount: discount,
      imageUrl: imageUrl,
      rating: rating,
      ratingCount: ratingCount,
      alternativeProducts: alternativeProducts,
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
  @JsonKey(name: 'list_price', defaultValue: 0.0)
  double? get price => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_1920')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_avg', defaultValue: 0.0)
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_count', defaultValue: 0.0)
  double? get ratingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'alternative_product_ids', defaultValue: null)
  List<AlternativeProducts>? get alternativeProducts =>
      throw _privateConstructorUsedError;
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
      @JsonKey(name: 'list_price', defaultValue: 0.0)
          double? price,
      double? discount,
      @JsonKey(name: 'image_1920')
          String? imageUrl,
      @JsonKey(name: 'rating_avg', defaultValue: 0.0)
          double? rating,
      @JsonKey(name: 'rating_count', defaultValue: 0.0)
          double? ratingCount,
      @JsonKey(name: 'alternative_product_ids', defaultValue: null)
          List<AlternativeProducts>? alternativeProducts,
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
    Object? price = freezed,
    Object? discount = freezed,
    Object? imageUrl = freezed,
    Object? rating = freezed,
    Object? ratingCount = freezed,
    Object? alternativeProducts = freezed,
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
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
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
      alternativeProducts: alternativeProducts == freezed
          ? _value.alternativeProducts
          : alternativeProducts // ignore: cast_nullable_to_non_nullable
              as List<AlternativeProducts>?,
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
      @JsonKey(name: 'list_price', defaultValue: 0.0)
          double? price,
      double? discount,
      @JsonKey(name: 'image_1920')
          String? imageUrl,
      @JsonKey(name: 'rating_avg', defaultValue: 0.0)
          double? rating,
      @JsonKey(name: 'rating_count', defaultValue: 0.0)
          double? ratingCount,
      @JsonKey(name: 'alternative_product_ids', defaultValue: null)
          List<AlternativeProducts>? alternativeProducts,
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
    Object? price = freezed,
    Object? discount = freezed,
    Object? imageUrl = freezed,
    Object? rating = freezed,
    Object? ratingCount = freezed,
    Object? alternativeProducts = freezed,
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
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
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
      alternativeProducts: alternativeProducts == freezed
          ? _value.alternativeProducts
          : alternativeProducts // ignore: cast_nullable_to_non_nullable
              as List<AlternativeProducts>?,
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
      @JsonKey(name: 'list_price', defaultValue: 0.0)
          this.price,
      this.discount,
      @JsonKey(name: 'image_1920')
          this.imageUrl,
      @JsonKey(name: 'rating_avg', defaultValue: 0.0)
          this.rating,
      @JsonKey(name: 'rating_count', defaultValue: 0.0)
          this.ratingCount,
      @JsonKey(name: 'alternative_product_ids', defaultValue: null)
          this.alternativeProducts,
      this.isFav});

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'list_price', defaultValue: 0.0)
  final double? price;
  @override
  final double? discount;
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
  @JsonKey(name: 'alternative_product_ids', defaultValue: null)
  final List<AlternativeProducts>? alternativeProducts;
  @override
  final bool? isFav;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, price: $price, discount: $discount, imageUrl: $imageUrl, rating: $rating, ratingCount: $ratingCount, alternativeProducts: $alternativeProducts, isFav: $isFav)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality()
                .equals(other.ratingCount, ratingCount) &&
            const DeepCollectionEquality()
                .equals(other.alternativeProducts, alternativeProducts) &&
            const DeepCollectionEquality().equals(other.isFav, isFav));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(discount),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(ratingCount),
      const DeepCollectionEquality().hash(alternativeProducts),
      const DeepCollectionEquality().hash(isFav));

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
      @JsonKey(name: 'list_price', defaultValue: 0.0)
          double? price,
      double? discount,
      @JsonKey(name: 'image_1920')
          String? imageUrl,
      @JsonKey(name: 'rating_avg', defaultValue: 0.0)
          double? rating,
      @JsonKey(name: 'rating_count', defaultValue: 0.0)
          double? ratingCount,
      @JsonKey(name: 'alternative_product_ids', defaultValue: null)
          List<AlternativeProducts>? alternativeProducts,
      bool? isFav}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'list_price', defaultValue: 0.0)
  double? get price;
  @override
  double? get discount;
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
  @JsonKey(name: 'alternative_product_ids', defaultValue: null)
  List<AlternativeProducts>? get alternativeProducts;
  @override
  bool? get isFav;
  @override
  @JsonKey(ignore: true)
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
