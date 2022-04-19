import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  const Country._();

  @JsonSerializable()
  const factory Country({
    int? id,
    String? name,
    String? code,
    @JsonKey(name: 'phone_code') String? phoneCode,
    @JsonKey(name: 'currency_id') Currency? currency,
    @JsonKey(name: 'state_ids') List<State>? states,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

@freezed
class Currency with _$Currency {
  const Currency._();

  @JsonSerializable()
  const factory Currency({
    int? id,
    String? name,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}

@freezed
class State with _$State {
  const State._();

  @JsonSerializable()
  const factory State({
    int? id,
    String? name,
    String? code,
  }) = _State;

  factory State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);
}
