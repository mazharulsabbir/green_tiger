// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentModel _$$_PaymentModelFromJson(Map<String, dynamic> json) =>
    _$_PaymentModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      state: json['state'] as String?,
      amountTax: (json['amount_tax'] as num?)?.toDouble(),
      amountTaxSigned: (json['amount_tax_signed'] as num?)?.toDouble(),
      amountTotal: (json['amount_total'] as num?)?.toDouble(),
      amountTotalSigned: (json['amount_total_signed'] as num?)?.toDouble(),
      amountUntaxed: (json['amount_untaxed'] as num?)?.toDouble(),
      amountUntaxedSigned: (json['amount_untaxed_signed'] as num?)?.toDouble(),
      date: json['date'] as String?,
      invoiceDate: json['invoice_date'] as String?,
      invoiceDueDate: json['invoice_date_due'] as String?,
    );

Map<String, dynamic> _$$_PaymentModelToJson(_$_PaymentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': instance.state,
      'amount_tax': instance.amountTax,
      'amount_tax_signed': instance.amountTaxSigned,
      'amount_total': instance.amountTotal,
      'amount_total_signed': instance.amountTotalSigned,
      'amount_untaxed': instance.amountUntaxed,
      'amount_untaxed_signed': instance.amountUntaxedSigned,
      'date': instance.date,
      'invoice_date': instance.invoiceDate,
      'invoice_date_due': instance.invoiceDueDate,
    };
