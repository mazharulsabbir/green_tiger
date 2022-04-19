// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactAndAddress _$$_ContactAndAddressFromJson(Map<String, dynamic> json) =>
    _$_ContactAndAddress(
      id: json['id'] as int?,
      name: json['name'],
      street: json['street'],
      city: json['city'],
      zip: json['zip'],
      mobile: json['mobile'],
      email: json['email'],
      phone: json['phone'],
      stateId: json['state_id'],
      countryId: json['country_id'],
    );

Map<String, dynamic> _$$_ContactAndAddressToJson(
        _$_ContactAndAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'street': instance.street,
      'city': instance.city,
      'zip': instance.zip,
      'mobile': instance.mobile,
      'email': instance.email,
      'phone': instance.phone,
      'state_id': instance.stateId,
      'country_id': instance.countryId,
    };
