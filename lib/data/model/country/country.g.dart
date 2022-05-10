// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Country _$$_CountryFromJson(Map<String, dynamic> json) => _$_Country(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      phoneCode: json['phone_code']?.toString(),
      currency: json['currency_id'] == null
          ? null
          : Currency.fromJson(
              (json['currency_id'] as List).first as Map<String, dynamic>),
      states: (json['state_ids'] as List<dynamic>?)
          ?.map((e) => State.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'phone_code': instance.phoneCode,
      'currency_id': instance.currency,
      'state_ids': instance.states,
    };

_$_Currency _$$_CurrencyFromJson(Map<String, dynamic> json) => _$_Currency(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_CurrencyToJson(_$_Currency instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_State _$$_StateFromJson(Map<String, dynamic> json) => _$_State(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$_StateToJson(_$_State instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
    };
