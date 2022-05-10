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
      {@JsonKey(name: 'id')
          int? id,
      @JsonKey(name: 'name')
          String? orderNumber,
      @JsonKey(name: 'state')
          String? status,
      @JsonKey(name: 'date_order')
          String? date,
      @JsonKey(name: 'expected_date')
          String? expectedDeliveryDate,
      @JsonKey(name: 'commitment_date')
          String? commitmentDate,
      @JsonKey(name: 'amount_total')
          double? price,
      @JsonKey(name: 'order_line')
          List<OrderLine>? orderLines,
      @JsonKey(name: 'partner_shipping_id')
          List<ContactAndAddress>? shippingAddress,
      @JsonKey(name: 'courier_delivery_status')
          String? deliveryStatus}) {
    return _Order(
      id: id,
      orderNumber: orderNumber,
      status: status,
      date: date,
      expectedDeliveryDate: expectedDeliveryDate,
      commitmentDate: commitmentDate,
      price: price,
      orderLines: orderLines,
      shippingAddress: shippingAddress,
      deliveryStatus: deliveryStatus,
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
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get orderNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_order')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_date')
  String? get expectedDeliveryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'commitment_date')
  String? get commitmentDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_total')
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_line')
  List<OrderLine>? get orderLines => throw _privateConstructorUsedError;
  @JsonKey(name: 'partner_shipping_id')
  List<ContactAndAddress>? get shippingAddress =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'courier_delivery_status')
  String? get deliveryStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          int? id,
      @JsonKey(name: 'name')
          String? orderNumber,
      @JsonKey(name: 'state')
          String? status,
      @JsonKey(name: 'date_order')
          String? date,
      @JsonKey(name: 'expected_date')
          String? expectedDeliveryDate,
      @JsonKey(name: 'commitment_date')
          String? commitmentDate,
      @JsonKey(name: 'amount_total')
          double? price,
      @JsonKey(name: 'order_line')
          List<OrderLine>? orderLines,
      @JsonKey(name: 'partner_shipping_id')
          List<ContactAndAddress>? shippingAddress,
      @JsonKey(name: 'courier_delivery_status')
          String? deliveryStatus});
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
    Object? status = freezed,
    Object? date = freezed,
    Object? expectedDeliveryDate = freezed,
    Object? commitmentDate = freezed,
    Object? price = freezed,
    Object? orderLines = freezed,
    Object? shippingAddress = freezed,
    Object? deliveryStatus = freezed,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedDeliveryDate: expectedDeliveryDate == freezed
          ? _value.expectedDeliveryDate
          : expectedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      commitmentDate: commitmentDate == freezed
          ? _value.commitmentDate
          : commitmentDate // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      orderLines: orderLines == freezed
          ? _value.orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<OrderLine>?,
      shippingAddress: shippingAddress == freezed
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as List<ContactAndAddress>?,
      deliveryStatus: deliveryStatus == freezed
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) then) =
      __$OrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id')
          int? id,
      @JsonKey(name: 'name')
          String? orderNumber,
      @JsonKey(name: 'state')
          String? status,
      @JsonKey(name: 'date_order')
          String? date,
      @JsonKey(name: 'expected_date')
          String? expectedDeliveryDate,
      @JsonKey(name: 'commitment_date')
          String? commitmentDate,
      @JsonKey(name: 'amount_total')
          double? price,
      @JsonKey(name: 'order_line')
          List<OrderLine>? orderLines,
      @JsonKey(name: 'partner_shipping_id')
          List<ContactAndAddress>? shippingAddress,
      @JsonKey(name: 'courier_delivery_status')
          String? deliveryStatus});
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
    Object? status = freezed,
    Object? date = freezed,
    Object? expectedDeliveryDate = freezed,
    Object? commitmentDate = freezed,
    Object? price = freezed,
    Object? orderLines = freezed,
    Object? shippingAddress = freezed,
    Object? deliveryStatus = freezed,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      expectedDeliveryDate: expectedDeliveryDate == freezed
          ? _value.expectedDeliveryDate
          : expectedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      commitmentDate: commitmentDate == freezed
          ? _value.commitmentDate
          : commitmentDate // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      orderLines: orderLines == freezed
          ? _value.orderLines
          : orderLines // ignore: cast_nullable_to_non_nullable
              as List<OrderLine>?,
      shippingAddress: shippingAddress == freezed
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as List<ContactAndAddress>?,
      deliveryStatus: deliveryStatus == freezed
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order extends _Order {
  const _$_Order(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.orderNumber,
      @JsonKey(name: 'state') this.status,
      @JsonKey(name: 'date_order') this.date,
      @JsonKey(name: 'expected_date') this.expectedDeliveryDate,
      @JsonKey(name: 'commitment_date') this.commitmentDate,
      @JsonKey(name: 'amount_total') this.price,
      @JsonKey(name: 'order_line') this.orderLines,
      @JsonKey(name: 'partner_shipping_id') this.shippingAddress,
      @JsonKey(name: 'courier_delivery_status') this.deliveryStatus})
      : super._();

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? orderNumber;
  @override
  @JsonKey(name: 'state')
  final String? status;
  @override
  @JsonKey(name: 'date_order')
  final String? date;
  @override
  @JsonKey(name: 'expected_date')
  final String? expectedDeliveryDate;
  @override
  @JsonKey(name: 'commitment_date')
  final String? commitmentDate;
  @override
  @JsonKey(name: 'amount_total')
  final double? price;
  @override
  @JsonKey(name: 'order_line')
  final List<OrderLine>? orderLines;
  @override
  @JsonKey(name: 'partner_shipping_id')
  final List<ContactAndAddress>? shippingAddress;
  @override
  @JsonKey(name: 'courier_delivery_status')
  final String? deliveryStatus;

  @override
  String toString() {
    return 'Order(id: $id, orderNumber: $orderNumber, status: $status, date: $date, expectedDeliveryDate: $expectedDeliveryDate, commitmentDate: $commitmentDate, price: $price, orderLines: $orderLines, shippingAddress: $shippingAddress, deliveryStatus: $deliveryStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Order &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.orderNumber, orderNumber) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.expectedDeliveryDate, expectedDeliveryDate) &&
            const DeepCollectionEquality()
                .equals(other.commitmentDate, commitmentDate) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.orderLines, orderLines) &&
            const DeepCollectionEquality()
                .equals(other.shippingAddress, shippingAddress) &&
            const DeepCollectionEquality()
                .equals(other.deliveryStatus, deliveryStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(orderNumber),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(expectedDeliveryDate),
      const DeepCollectionEquality().hash(commitmentDate),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(orderLines),
      const DeepCollectionEquality().hash(shippingAddress),
      const DeepCollectionEquality().hash(deliveryStatus));

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
      {@JsonKey(name: 'id')
          int? id,
      @JsonKey(name: 'name')
          String? orderNumber,
      @JsonKey(name: 'state')
          String? status,
      @JsonKey(name: 'date_order')
          String? date,
      @JsonKey(name: 'expected_date')
          String? expectedDeliveryDate,
      @JsonKey(name: 'commitment_date')
          String? commitmentDate,
      @JsonKey(name: 'amount_total')
          double? price,
      @JsonKey(name: 'order_line')
          List<OrderLine>? orderLines,
      @JsonKey(name: 'partner_shipping_id')
          List<ContactAndAddress>? shippingAddress,
      @JsonKey(name: 'courier_delivery_status')
          String? deliveryStatus}) = _$_Order;
  const _Order._() : super._();

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get orderNumber;
  @override
  @JsonKey(name: 'state')
  String? get status;
  @override
  @JsonKey(name: 'date_order')
  String? get date;
  @override
  @JsonKey(name: 'expected_date')
  String? get expectedDeliveryDate;
  @override
  @JsonKey(name: 'commitment_date')
  String? get commitmentDate;
  @override
  @JsonKey(name: 'amount_total')
  double? get price;
  @override
  @JsonKey(name: 'order_line')
  List<OrderLine>? get orderLines;
  @override
  @JsonKey(name: 'partner_shipping_id')
  List<ContactAndAddress>? get shippingAddress;
  @override
  @JsonKey(name: 'courier_delivery_status')
  String? get deliveryStatus;
  @override
  @JsonKey(ignore: true)
  _$OrderCopyWith<_Order> get copyWith => throw _privateConstructorUsedError;
}

OrderLine _$OrderLineFromJson(Map<String, dynamic> json) {
  return _OrderLine.fromJson(json);
}

/// @nodoc
class _$OrderLineTearOff {
  const _$OrderLineTearOff();

  _OrderLine call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'product_template_id') CommonNameIdClass? product,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image_1920') String? imageUrl,
      @JsonKey(name: 'product_uom_qty') double? quantity,
      @JsonKey(name: 'product_uom') CommonNameIdClass? unit,
      @JsonKey(name: 'tax_id') CommonNameIdClass? tax,
      @JsonKey(name: 'price_unit') double? unitPrice,
      @JsonKey(name: 'price_subtotal') double? priceSubtotal,
      @JsonKey(name: 'discount') double? discount}) {
    return _OrderLine(
      id: id,
      product: product,
      name: name,
      imageUrl: imageUrl,
      quantity: quantity,
      unit: unit,
      tax: tax,
      unitPrice: unitPrice,
      priceSubtotal: priceSubtotal,
      discount: discount,
    );
  }

  OrderLine fromJson(Map<String, Object?> json) {
    return OrderLine.fromJson(json);
  }
}

/// @nodoc
const $OrderLine = _$OrderLineTearOff();

/// @nodoc
mixin _$OrderLine {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_template_id')
  CommonNameIdClass? get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_1920')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_uom_qty')
  double? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_uom')
  CommonNameIdClass? get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_id')
  CommonNameIdClass? get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_unit')
  double? get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_subtotal')
  double? get priceSubtotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  double? get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderLineCopyWith<OrderLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLineCopyWith<$Res> {
  factory $OrderLineCopyWith(OrderLine value, $Res Function(OrderLine) then) =
      _$OrderLineCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'product_template_id') CommonNameIdClass? product,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image_1920') String? imageUrl,
      @JsonKey(name: 'product_uom_qty') double? quantity,
      @JsonKey(name: 'product_uom') CommonNameIdClass? unit,
      @JsonKey(name: 'tax_id') CommonNameIdClass? tax,
      @JsonKey(name: 'price_unit') double? unitPrice,
      @JsonKey(name: 'price_subtotal') double? priceSubtotal,
      @JsonKey(name: 'discount') double? discount});

  $CommonNameIdClassCopyWith<$Res>? get product;
  $CommonNameIdClassCopyWith<$Res>? get unit;
  $CommonNameIdClassCopyWith<$Res>? get tax;
}

/// @nodoc
class _$OrderLineCopyWithImpl<$Res> implements $OrderLineCopyWith<$Res> {
  _$OrderLineCopyWithImpl(this._value, this._then);

  final OrderLine _value;
  // ignore: unused_field
  final $Res Function(OrderLine) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? quantity = freezed,
    Object? unit = freezed,
    Object? tax = freezed,
    Object? unitPrice = freezed,
    Object? priceSubtotal = freezed,
    Object? discount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CommonNameIdClass?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as CommonNameIdClass?,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as CommonNameIdClass?,
      unitPrice: unitPrice == freezed
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      priceSubtotal: priceSubtotal == freezed
          ? _value.priceSubtotal
          : priceSubtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $CommonNameIdClassCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $CommonNameIdClassCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }

  @override
  $CommonNameIdClassCopyWith<$Res>? get unit {
    if (_value.unit == null) {
      return null;
    }

    return $CommonNameIdClassCopyWith<$Res>(_value.unit!, (value) {
      return _then(_value.copyWith(unit: value));
    });
  }

  @override
  $CommonNameIdClassCopyWith<$Res>? get tax {
    if (_value.tax == null) {
      return null;
    }

    return $CommonNameIdClassCopyWith<$Res>(_value.tax!, (value) {
      return _then(_value.copyWith(tax: value));
    });
  }
}

/// @nodoc
abstract class _$OrderLineCopyWith<$Res> implements $OrderLineCopyWith<$Res> {
  factory _$OrderLineCopyWith(
          _OrderLine value, $Res Function(_OrderLine) then) =
      __$OrderLineCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'product_template_id') CommonNameIdClass? product,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image_1920') String? imageUrl,
      @JsonKey(name: 'product_uom_qty') double? quantity,
      @JsonKey(name: 'product_uom') CommonNameIdClass? unit,
      @JsonKey(name: 'tax_id') CommonNameIdClass? tax,
      @JsonKey(name: 'price_unit') double? unitPrice,
      @JsonKey(name: 'price_subtotal') double? priceSubtotal,
      @JsonKey(name: 'discount') double? discount});

  @override
  $CommonNameIdClassCopyWith<$Res>? get product;
  @override
  $CommonNameIdClassCopyWith<$Res>? get unit;
  @override
  $CommonNameIdClassCopyWith<$Res>? get tax;
}

/// @nodoc
class __$OrderLineCopyWithImpl<$Res> extends _$OrderLineCopyWithImpl<$Res>
    implements _$OrderLineCopyWith<$Res> {
  __$OrderLineCopyWithImpl(_OrderLine _value, $Res Function(_OrderLine) _then)
      : super(_value, (v) => _then(v as _OrderLine));

  @override
  _OrderLine get _value => super._value as _OrderLine;

  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? quantity = freezed,
    Object? unit = freezed,
    Object? tax = freezed,
    Object? unitPrice = freezed,
    Object? priceSubtotal = freezed,
    Object? discount = freezed,
  }) {
    return _then(_OrderLine(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CommonNameIdClass?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as CommonNameIdClass?,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as CommonNameIdClass?,
      unitPrice: unitPrice == freezed
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      priceSubtotal: priceSubtotal == freezed
          ? _value.priceSubtotal
          : priceSubtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderLine extends _OrderLine {
  const _$_OrderLine(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'product_template_id') this.product,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'image_1920') this.imageUrl,
      @JsonKey(name: 'product_uom_qty') this.quantity,
      @JsonKey(name: 'product_uom') this.unit,
      @JsonKey(name: 'tax_id') this.tax,
      @JsonKey(name: 'price_unit') this.unitPrice,
      @JsonKey(name: 'price_subtotal') this.priceSubtotal,
      @JsonKey(name: 'discount') this.discount})
      : super._();

  factory _$_OrderLine.fromJson(Map<String, dynamic> json) =>
      _$$_OrderLineFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'product_template_id')
  final CommonNameIdClass? product;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'image_1920')
  final String? imageUrl;
  @override
  @JsonKey(name: 'product_uom_qty')
  final double? quantity;
  @override
  @JsonKey(name: 'product_uom')
  final CommonNameIdClass? unit;
  @override
  @JsonKey(name: 'tax_id')
  final CommonNameIdClass? tax;
  @override
  @JsonKey(name: 'price_unit')
  final double? unitPrice;
  @override
  @JsonKey(name: 'price_subtotal')
  final double? priceSubtotal;
  @override
  @JsonKey(name: 'discount')
  final double? discount;

  @override
  String toString() {
    return 'OrderLine(id: $id, product: $product, name: $name, imageUrl: $imageUrl, quantity: $quantity, unit: $unit, tax: $tax, unitPrice: $unitPrice, priceSubtotal: $priceSubtotal, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderLine &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.tax, tax) &&
            const DeepCollectionEquality().equals(other.unitPrice, unitPrice) &&
            const DeepCollectionEquality()
                .equals(other.priceSubtotal, priceSubtotal) &&
            const DeepCollectionEquality().equals(other.discount, discount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(unit),
      const DeepCollectionEquality().hash(tax),
      const DeepCollectionEquality().hash(unitPrice),
      const DeepCollectionEquality().hash(priceSubtotal),
      const DeepCollectionEquality().hash(discount));

  @JsonKey(ignore: true)
  @override
  _$OrderLineCopyWith<_OrderLine> get copyWith =>
      __$OrderLineCopyWithImpl<_OrderLine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderLineToJson(this);
  }
}

abstract class _OrderLine extends OrderLine {
  const factory _OrderLine(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'product_template_id') CommonNameIdClass? product,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image_1920') String? imageUrl,
      @JsonKey(name: 'product_uom_qty') double? quantity,
      @JsonKey(name: 'product_uom') CommonNameIdClass? unit,
      @JsonKey(name: 'tax_id') CommonNameIdClass? tax,
      @JsonKey(name: 'price_unit') double? unitPrice,
      @JsonKey(name: 'price_subtotal') double? priceSubtotal,
      @JsonKey(name: 'discount') double? discount}) = _$_OrderLine;
  const _OrderLine._() : super._();

  factory _OrderLine.fromJson(Map<String, dynamic> json) =
      _$_OrderLine.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'product_template_id')
  CommonNameIdClass? get product;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'image_1920')
  String? get imageUrl;
  @override
  @JsonKey(name: 'product_uom_qty')
  double? get quantity;
  @override
  @JsonKey(name: 'product_uom')
  CommonNameIdClass? get unit;
  @override
  @JsonKey(name: 'tax_id')
  CommonNameIdClass? get tax;
  @override
  @JsonKey(name: 'price_unit')
  double? get unitPrice;
  @override
  @JsonKey(name: 'price_subtotal')
  double? get priceSubtotal;
  @override
  @JsonKey(name: 'discount')
  double? get discount;
  @override
  @JsonKey(ignore: true)
  _$OrderLineCopyWith<_OrderLine> get copyWith =>
      throw _privateConstructorUsedError;
}

CommonNameIdClass _$CommonNameIdClassFromJson(Map<String, dynamic> json) {
  return _CommonNameIdClass.fromJson(json);
}

/// @nodoc
class _$CommonNameIdClassTearOff {
  const _$CommonNameIdClassTearOff();

  _CommonNameIdClass call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name}) {
    return _CommonNameIdClass(
      id: id,
      name: name,
    );
  }

  CommonNameIdClass fromJson(Map<String, Object?> json) {
    return CommonNameIdClass.fromJson(json);
  }
}

/// @nodoc
const $CommonNameIdClass = _$CommonNameIdClassTearOff();

/// @nodoc
mixin _$CommonNameIdClass {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonNameIdClassCopyWith<CommonNameIdClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonNameIdClassCopyWith<$Res> {
  factory $CommonNameIdClassCopyWith(
          CommonNameIdClass value, $Res Function(CommonNameIdClass) then) =
      _$CommonNameIdClassCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$CommonNameIdClassCopyWithImpl<$Res>
    implements $CommonNameIdClassCopyWith<$Res> {
  _$CommonNameIdClassCopyWithImpl(this._value, this._then);

  final CommonNameIdClass _value;
  // ignore: unused_field
  final $Res Function(CommonNameIdClass) _then;

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
abstract class _$CommonNameIdClassCopyWith<$Res>
    implements $CommonNameIdClassCopyWith<$Res> {
  factory _$CommonNameIdClassCopyWith(
          _CommonNameIdClass value, $Res Function(_CommonNameIdClass) then) =
      __$CommonNameIdClassCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$CommonNameIdClassCopyWithImpl<$Res>
    extends _$CommonNameIdClassCopyWithImpl<$Res>
    implements _$CommonNameIdClassCopyWith<$Res> {
  __$CommonNameIdClassCopyWithImpl(
      _CommonNameIdClass _value, $Res Function(_CommonNameIdClass) _then)
      : super(_value, (v) => _then(v as _CommonNameIdClass));

  @override
  _CommonNameIdClass get _value => super._value as _CommonNameIdClass;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_CommonNameIdClass(
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
class _$_CommonNameIdClass extends _CommonNameIdClass {
  const _$_CommonNameIdClass(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name})
      : super._();

  factory _$_CommonNameIdClass.fromJson(Map<String, dynamic> json) =>
      _$$_CommonNameIdClassFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'CommonNameIdClass(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommonNameIdClass &&
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
  _$CommonNameIdClassCopyWith<_CommonNameIdClass> get copyWith =>
      __$CommonNameIdClassCopyWithImpl<_CommonNameIdClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommonNameIdClassToJson(this);
  }
}

abstract class _CommonNameIdClass extends CommonNameIdClass {
  const factory _CommonNameIdClass(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name}) = _$_CommonNameIdClass;
  const _CommonNameIdClass._() : super._();

  factory _CommonNameIdClass.fromJson(Map<String, dynamic> json) =
      _$_CommonNameIdClass.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$CommonNameIdClassCopyWith<_CommonNameIdClass> get copyWith =>
      throw _privateConstructorUsedError;
}
