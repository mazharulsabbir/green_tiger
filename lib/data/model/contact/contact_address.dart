import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_address.freezed.dart';
part 'contact_address.g.dart';

@freezed 
class ContactAndAddress with _$ContactAndAddress {
  const factory ContactAndAddress({
    int? id,
    dynamic name,
    dynamic street,
    dynamic city,
    dynamic zip,
    dynamic mobile,
    dynamic email,
    dynamic phone,
    @JsonKey(name: 'state_id') dynamic stateId,
    @JsonKey(name: 'country_id') dynamic countryId,
  }) = _ContactAndAddress;
  
  factory ContactAndAddress.fromJson(Map<String, dynamic> json) => _$ContactAndAddressFromJson(json);
}