import 'package:freezed_annotation/freezed_annotation.dart';

import '../country/country.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    int? id,
    String? name,
    String? email,
    @JsonKey(name: 'image_1920') String? profilePicture,
    @JsonKey(name: 'image_256') String? avatar,
    String? type,
    String? phone,
    String? mobile,
    @JsonKey(name: 'is_dealer') bool? isDealer,
    @JsonKey(name: 'country_id') List<Country>? country,
    @JsonKey(name: 'state_id') List<State>? state,
    String? zip,
    @JsonKey(name: 'currency_id') List<Currency>? currency,
    @JsonKey(name: 'contact_address') String? contactAddress,
    @JsonKey(name: 'contact_address_complete') String? contactAddressComplete,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
