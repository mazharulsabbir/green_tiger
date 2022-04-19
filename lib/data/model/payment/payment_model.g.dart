// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentModel _$$_PaymentModelFromJson(Map<String, dynamic> json) =>
    _$_PaymentModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      communication: json['communication'] as String?,
      state: json['state'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      date: json['payment_date'] as String?,
    );

Map<String, dynamic> _$$_PaymentModelToJson(_$_PaymentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'communication': instance.communication,
      'state': instance.state,
      'amount': instance.amount,
      'payment_date': instance.date,
    };
