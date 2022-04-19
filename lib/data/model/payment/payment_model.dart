import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

@freezed
class PaymentModel with _$PaymentModel {
  const factory PaymentModel({
    int? id,
    String? name,
    String? state,
    @JsonKey(name: 'amount_tax') double? amountTax,
    @JsonKey(name: 'amount_tax_signed') double? amountTaxSigned,
    @JsonKey(name: 'amount_total') double? amountTotal,
    @JsonKey(name: 'amount_total_signed') double? amountTotalSigned,
    @JsonKey(name: 'amount_untaxed') double? amountUntaxed,
    @JsonKey(name: 'amount_untaxed_signed') double? amountUntaxedSigned,
    String? date,
    @JsonKey(name: 'invoice_date') String? invoiceDate,
    @JsonKey(name: 'invoice_date_due') String? invoiceDueDate,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);
}
