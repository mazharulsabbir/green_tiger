// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
class _$OrderTearOff {
  const _$OrderTearOff();

  _Order call(
      {int? id,
      String? orderNumber,
      String? date,
      String? status,
      String? price,
      int? quantity}) {
    return _Order(
      id: id,
      orderNumber: orderNumber,
      date: date,
      status: status,
      price: price,
      quantity: quantity,
    );
  }

  Order fromJson(Map<String, Object?> json) {
    return Order.fromJson(json);
  }
}

/// @nodoc
const $Order = _$OrderTearOff();

/// @nodoc
mixin _$Order {
  int? get id => throw _privateConstructorUsedError;
  String? get orderNumber => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? orderNumber,
      String? date,
      String? status,
      String? price,
      int? quantity});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res> implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  final Order _value;
  // ignore: unused_field
  final $Res Function(Order) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? orderNumber = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderNumber: orderNumber == freezed
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) then) =
      __$OrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? orderNumber,
      String? date,
      String? status,
      String? price,
      int? quantity});
}

/// @nodoc
class __$OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(_Order _value, $Res Function(_Order) _then)
      : super(_value, (v) => _then(v as _Order));

  @override
  _Order get _value => super._value as _Order;

  @override
  $Res call({
    Object? id = freezed,
    Object? orderNumber = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_Order(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      orderNumber: orderNumber == freezed
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order extends _Order {
  const _$_Order(
      {this.id,
      this.orderNumber,
      this.date,
      this.status,
      this.price,
      this.quantity})
      : super._();

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final int? id;
  @override
  final String? orderNumber;
  @override
  final String? date;
  @override
  final String? status;
  @override
  final String? price;
  @override
  final int? quantity;

  @override
  String toString() {
    return 'Order(id: $id, orderNumber: $orderNumber, date: $date, status: $status, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Order &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.orderNumber, orderNumber) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(orderNumber),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$OrderCopyWith<_Order> get copyWith =>
      __$OrderCopyWithImpl<_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(this);
  }
}

abstract class _Order extends Order {
  const factory _Order(
      {int? id,
      String? orderNumber,
      String? date,
      String? status,
      String? price,
      int? quantity}) = _$_Order;
  const _Order._() : super._();

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  int? get id;
  @override
  String? get orderNumber;
  @override
  String? get date;
  @override
  String? get status;
  @override
  String? get price;
  @override
  int? get quantity;
  @override
  @JsonKey(ignore: true)
  _$OrderCopyWith<_Order> get copyWith => throw _privateConstructorUsedError;
}
