import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const Order._();

  const factory Order({
    int? id,
    String? orderNumber,
    String? date,
    String? status,
    String? price,
    int? quantity,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
