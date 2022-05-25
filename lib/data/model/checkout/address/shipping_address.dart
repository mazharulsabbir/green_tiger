import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_tiger/data/model/country/country.dart';
import 'package:green_tiger/data/model/user/user.dart';

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
    @Default(false) bool isDefault,
  }) = _ShippingAddress;

  factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressFromJson(json);
  factory ShippingAddress.fromContactAddress(
      ContactAndAddress? _contactAddress) {
    String? _firstName = _contactAddress?.name?.split(' ').first;
    String? _lastName = _contactAddress?.name?.split(' ').last;
    String? _state = _contactAddress?.state?.name;
    String? _country = _contactAddress?.country?.name;

    return ShippingAddress(
      firstName: _firstName,
      lastName: _lastName,
      state: _state,
      country: _country,
      streetAddress1: _contactAddress?.street,
      city: _contactAddress?.city,
      zipCode: _contactAddress?.zip,
      phone: _contactAddress?.phone,
    );
  }
}
