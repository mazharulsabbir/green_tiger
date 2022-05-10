// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      profilePicture: json['image_1920'] as String?,
      avatar: json['image_256'] as String?,
      type: json['type'] as String?,
      phone: json['phone'] as String?,
      mobile: json['mobile'] as String?,
      gender: json['gender'] as String?,
      birthday: json['birthday'] as String?,
      isDealer: json['is_dealer'] as bool?,
      country: (json['country_id'] as List<dynamic>?)
          ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
      state: (json['state_id'] as List<dynamic>?)
          ?.map((e) => State.fromJson(e as Map<String, dynamic>))
          .toList(),
      zip: json['zip'] as String?,
      currency: (json['currency_id'] as List<dynamic>?)
          ?.map((e) => Currency.fromJson(e as Map<String, dynamic>))
          .toList(),
      contactAddress: json['contact_address'] as String?,
      contactAddressComplete: json['contact_address_complete'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'image_1920': instance.profilePicture,
      'image_256': instance.avatar,
      'type': instance.type,
      'phone': instance.phone,
      'mobile': instance.mobile,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'is_dealer': instance.isDealer,
      'country_id': instance.country,
      'state_id': instance.state,
      'zip': instance.zip,
      'currency_id': instance.currency,
      'contact_address': instance.contactAddress,
      'contact_address_complete': instance.contactAddressComplete,
    };

_$_ContactAndAddress _$$_ContactAndAddressFromJson(Map<String, dynamic> json) =>
    _$_ContactAndAddress(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      mobile: json['mobile'] as String?,
      phone: json['phone'] as String?,
      zip: json['zip'] as String?,
      street: json['street'] as String?,
      city: json['city'] as String?,
      type: json['type'] as String?,
      country: json['country_id'] == null
          ? null
          : Country.fromJson(json['country_id'] as Map<String, dynamic>),
      state: json['state_id'] == null
          ? null
          : State.fromJson(json['state_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ContactAndAddressToJson(
        _$_ContactAndAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
      'phone': instance.phone,
      'zip': instance.zip,
      'street': instance.street,
      'city': instance.city,
      'type': instance.type,
      'country_id': instance.country,
      'state_id': instance.state,
    };
