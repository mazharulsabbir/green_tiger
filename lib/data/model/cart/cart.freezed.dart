// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
class _$CartModelTearOff {
  const _$CartModelTearOff();

  _CartModel call(
      {String? name,
      String? description,
      String? imageUrl,
      String? price,
      String? quantity,
      String? total}) {
    return _CartModel(
      name: name,
      description: description,
      imageUrl: imageUrl,
      price: price,
      quantity: quantity,
      total: total,
    );
  }

  CartModel fromJson(Map<String, Object?> json) {
    return CartModel.fromJson(json);
  }
}

/// @nodoc
const $CartModel = _$CartModelTearOff();

/// @nodoc
mixin _$CartModel {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get quantity => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? description,
      String? imageUrl,
      String? price,
      String? quantity,
      String? total});
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res> implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  final CartModel _value;
  // ignore: unused_field
  final $Res Function(CartModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$CartModelCopyWith(
          _CartModel value, $Res Function(_CartModel) then) =
      __$CartModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? description,
      String? imageUrl,
      String? price,
      String? quantity,
      String? total});
}

/// @nodoc
class __$CartModelCopyWithImpl<$Res> extends _$CartModelCopyWithImpl<$Res>
    implements _$CartModelCopyWith<$Res> {
  __$CartModelCopyWithImpl(_CartModel _value, $Res Function(_CartModel) _then)
      : super(_value, (v) => _then(v as _CartModel));

  @override
  _CartModel get _value => super._value as _CartModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? total = freezed,
  }) {
    return _then(_CartModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartModel extends _CartModel {
  _$_CartModel(
      {this.name,
      this.description,
      this.imageUrl,
      this.price,
      this.quantity,
      this.total})
      : super._();

  factory _$_CartModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartModelFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? imageUrl;
  @override
  final String? price;
  @override
  final String? quantity;
  @override
  final String? total;

  @override
  String toString() {
    return 'CartModel(name: $name, description: $description, imageUrl: $imageUrl, price: $price, quantity: $quantity, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$CartModelCopyWith<_CartModel> get copyWith =>
      __$CartModelCopyWithImpl<_CartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartModelToJson(this);
  }
}

abstract class _CartModel extends CartModel {
  factory _CartModel(
      {String? name,
      String? description,
      String? imageUrl,
      String? price,
      String? quantity,
      String? total}) = _$_CartModel;
  _CartModel._() : super._();

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$_CartModel.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get imageUrl;
  @override
  String? get price;
  @override
  String? get quantity;
  @override
  String? get total;
  @override
  @JsonKey(ignore: true)
  _$CartModelCopyWith<_CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
