import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_address.freezed.dart';
part 'shipping_address.g.dart';

@freezed
class ShippingAddress with _$ShippingAddress {
  const ShippingAddress._();

  @JsonSerializable()
  const factory ShippingAddress({
    String? firstName,
    String? lastName,
    String? streetAddress1,
    String? streetAddress2,
    String? city,
    String? state,
    String? country,
    String? zipCode,
    String? phone,
  }) = _ShippingAddress;

  factory ShippingAddress.fromJson(Map<String, dynamic> json) => _$ShippingAddressFromJson(json);
}