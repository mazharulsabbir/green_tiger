// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as int?,
      orderNumber: json['orderNumber'] as String?,
      date: json['date'] as String?,
      status: json['status'] as String?,
      price: json['price'] as String?,
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'orderNumber': instance.orderNumber,
      'date': instance.date,
      'status': instance.status,
      'price': instance.price,
      'quantity': instance.quantity,
    };
