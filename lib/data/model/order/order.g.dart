// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as int?,
      orderNumber: json['name'] as String?,
      status: json['state'] as String?,
      date: json['date_order'] as String?,
      expectedDeliveryDate: json['expected_date'] as String?,
      commitmentDate: json['commitment_date'] as String?,
      price: (json['amount_total'] as num?)?.toDouble(),
      orderLines: (json['order_line'] as List<dynamic>?)
          ?.map((e) => OrderLine.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.orderNumber,
      'state': instance.status,
      'date_order': instance.date,
      'expected_date': instance.expectedDeliveryDate,
      'commitment_date': instance.commitmentDate,
      'amount_total': instance.price,
      'order_line': instance.orderLines,
    };

_$_OrderLine _$$_OrderLineFromJson(Map<String, dynamic> json) => _$_OrderLine(
      id: json['id'] as int?,
      product: json['product_template_id'] == null
          ? null
          : CommonNameIdClass.fromJson(
              json['product_template_id'] as Map<String, dynamic>),
      summery: json['name'] as String?,
      quantity: (json['product_uom_qty'] as num?)?.toDouble(),
      unit: json['product_uom'] == null
          ? null
          : CommonNameIdClass.fromJson(
              json['product_uom'] as Map<String, dynamic>),
      tax: json['tax_id'] == null
          ? null
          : CommonNameIdClass.fromJson(json['tax_id'] as Map<String, dynamic>),
      unitPrice: (json['price_unit'] as num?)?.toDouble(),
      priceSubtotal: (json['price_subtotal'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_OrderLineToJson(_$_OrderLine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_template_id': instance.product,
      'name': instance.summery,
      'product_uom_qty': instance.quantity,
      'product_uom': instance.unit,
      'tax_id': instance.tax,
      'price_unit': instance.unitPrice,
      'price_subtotal': instance.priceSubtotal,
      'discount': instance.discount,
    };

_$_CommonNameIdClass _$$_CommonNameIdClassFromJson(Map<String, dynamic> json) =>
    _$_CommonNameIdClass(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_CommonNameIdClassToJson(
        _$_CommonNameIdClass instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
