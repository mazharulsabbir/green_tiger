import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const Order._();

  const factory Order({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? orderNumber,
    @JsonKey(name: 'state') String? status,
    @JsonKey(name: 'date_order') String? date,
    @JsonKey(name: 'expected_date') String? expectedDeliveryDate,
    @JsonKey(name: 'commitment_date') String? commitmentDate,
    @JsonKey(name: 'amount_total') double? price,
    @JsonKey(name: 'order_line') List<OrderLine>? orderLines,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
class OrderLine with _$OrderLine {
  const OrderLine._();

  const factory OrderLine({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'product_template_id') CommonNameIdClass? product,
    @JsonKey(name: 'name') String? summery,
    @JsonKey(name: 'product_uom_qty') double? quantity,
    @JsonKey(name: 'product_uom') CommonNameIdClass? unit,
    @JsonKey(name: 'tax_id') CommonNameIdClass? tax,
    @JsonKey(name: 'price_unit') double? unitPrice,
    @JsonKey(name: 'price_subtotal') double? priceSubtotal,
    @JsonKey(name: 'discount') double? discount,
  }) = _OrderLine;

  factory OrderLine.fromJson(Map<String, dynamic> json) =>
      _$OrderLineFromJson(json);
}

@freezed
class CommonNameIdClass with _$CommonNameIdClass {
  const CommonNameIdClass._();

  const factory CommonNameIdClass({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _CommonNameIdClass;

  factory CommonNameIdClass.fromJson(Map<String, dynamic> json) =>
      _$CommonNameIdClassFromJson(json);
}