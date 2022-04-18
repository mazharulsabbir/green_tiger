// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call(
      {int? id,
      String? name,
      String? email,
      @JsonKey(name: 'image_1920')
          String? profilePicture,
      @JsonKey(name: 'image_256')
          String? avatar,
      String? type,
      String? phone,
      String? mobile,
      @JsonKey(name: 'is_dealer')
          bool? isDealer,
      @JsonKey(name: 'country_id')
          List<Country>? country,
      @JsonKey(name: 'state_id')
          List<State>? state,
      String? zip,
      @JsonKey(name: 'currency_id')
          List<Currency>? currency,
      @JsonKey(name: 'contact_address')
          String? contactAddress,
      @JsonKey(name: 'contact_address_complete')
          String? contactAddressComplete}) {
    return _UserModel(
      id: id,
      name: name,
      email: email,
      profilePicture: profilePicture,
      avatar: avatar,
      type: type,
      phone: phone,
      mobile: mobile,
      isDealer: isDealer,
      country: country,
      state: state,
      zip: zip,
      currency: currency,
      contactAddress: contactAddress,
      contactAddressComplete: contactAddressComplete,
    );
  }

  UserModel fromJson(Map<String, Object?> json) {
    return UserModel.fromJson(json);
  }
}

/// @nodoc
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_1920')
  String? get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_256')
  String? get avatar => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_dealer')
  bool? get isDealer => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_id')
  List<Country>? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_id')
  List<State>? get state => throw _privateConstructorUsedError;
  String? get zip => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_id')
  List<Currency>? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_address')
  String? get contactAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_address_complete')
  String? get contactAddressComplete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? email,
      @JsonKey(name: 'image_1920')
          String? profilePicture,
      @JsonKey(name: 'image_256')
          String? avatar,
      String? type,
      String? phone,
      String? mobile,
      @JsonKey(name: 'is_dealer')
          bool? isDealer,
      @JsonKey(name: 'country_id')
          List<Country>? country,
      @JsonKey(name: 'state_id')
          List<State>? state,
      String? zip,
      @JsonKey(name: 'currency_id')
          List<Currency>? currency,
      @JsonKey(name: 'contact_address')
          String? contactAddress,
      @JsonKey(name: 'contact_address_complete')
          String? contactAddressComplete});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? profilePicture = freezed,
    Object? avatar = freezed,
    Object? type = freezed,
    Object? phone = freezed,
    Object? mobile = freezed,
    Object? isDealer = freezed,
    Object? country = freezed,
    Object? state = freezed,
    Object? zip = freezed,
    Object? currency = freezed,
    Object? contactAddress = freezed,
    Object? contactAddressComplete = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      isDealer: isDealer == freezed
          ? _value.isDealer
          : isDealer // ignore: cast_nullable_to_non_nullable
              as bool?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as List<State>?,
      zip: zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as List<Currency>?,
      contactAddress: contactAddress == freezed
          ? _value.contactAddress
          : contactAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      contactAddressComplete: contactAddressComplete == freezed
          ? _value.contactAddressComplete
          : contactAddressComplete // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? email,
      @JsonKey(name: 'image_1920')
          String? profilePicture,
      @JsonKey(name: 'image_256')
          String? avatar,
      String? type,
      String? phone,
      String? mobile,
      @JsonKey(name: 'is_dealer')
          bool? isDealer,
      @JsonKey(name: 'country_id')
          List<Country>? country,
      @JsonKey(name: 'state_id')
          List<State>? state,
      String? zip,
      @JsonKey(name: 'currency_id')
          List<Currency>? currency,
      @JsonKey(name: 'contact_address')
          String? contactAddress,
      @JsonKey(name: 'contact_address_complete')
          String? contactAddressComplete});
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? profilePicture = freezed,
    Object? avatar = freezed,
    Object? type = freezed,
    Object? phone = freezed,
    Object? mobile = freezed,
    Object? isDealer = freezed,
    Object? country = freezed,
    Object? state = freezed,
    Object? zip = freezed,
    Object? currency = freezed,
    Object? contactAddress = freezed,
    Object? contactAddressComplete = freezed,
  }) {
    return _then(_UserModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      isDealer: isDealer == freezed
          ? _value.isDealer
          : isDealer // ignore: cast_nullable_to_non_nullable
              as bool?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as List<State>?,
      zip: zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as List<Currency>?,
      contactAddress: contactAddress == freezed
          ? _value.contactAddress
          : contactAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      contactAddressComplete: contactAddressComplete == freezed
          ? _value.contactAddressComplete
          : contactAddressComplete // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {this.id,
      this.name,
      this.email,
      @JsonKey(name: 'image_1920') this.profilePicture,
      @JsonKey(name: 'image_256') this.avatar,
      this.type,
      this.phone,
      this.mobile,
      @JsonKey(name: 'is_dealer') this.isDealer,
      @JsonKey(name: 'country_id') this.country,
      @JsonKey(name: 'state_id') this.state,
      this.zip,
      @JsonKey(name: 'currency_id') this.currency,
      @JsonKey(name: 'contact_address') this.contactAddress,
      @JsonKey(name: 'contact_address_complete') this.contactAddressComplete});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  @JsonKey(name: 'image_1920')
  final String? profilePicture;
  @override
  @JsonKey(name: 'image_256')
  final String? avatar;
  @override
  final String? type;
  @override
  final String? phone;
  @override
  final String? mobile;
  @override
  @JsonKey(name: 'is_dealer')
  final bool? isDealer;
  @override
  @JsonKey(name: 'country_id')
  final List<Country>? country;
  @override
  @JsonKey(name: 'state_id')
  final List<State>? state;
  @override
  final String? zip;
  @override
  @JsonKey(name: 'currency_id')
  final List<Currency>? currency;
  @override
  @JsonKey(name: 'contact_address')
  final String? contactAddress;
  @override
  @JsonKey(name: 'contact_address_complete')
  final String? contactAddressComplete;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, profilePicture: $profilePicture, avatar: $avatar, type: $type, phone: $phone, mobile: $mobile, isDealer: $isDealer, country: $country, state: $state, zip: $zip, currency: $currency, contactAddress: $contactAddress, contactAddressComplete: $contactAddressComplete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.profilePicture, profilePicture) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.mobile, mobile) &&
            const DeepCollectionEquality().equals(other.isDealer, isDealer) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.zip, zip) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.contactAddress, contactAddress) &&
            const DeepCollectionEquality()
                .equals(other.contactAddressComplete, contactAddressComplete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(profilePicture),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(mobile),
      const DeepCollectionEquality().hash(isDealer),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(zip),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(contactAddress),
      const DeepCollectionEquality().hash(contactAddressComplete));

  @JsonKey(ignore: true)
  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {int? id,
      String? name,
      String? email,
      @JsonKey(name: 'image_1920')
          String? profilePicture,
      @JsonKey(name: 'image_256')
          String? avatar,
      String? type,
      String? phone,
      String? mobile,
      @JsonKey(name: 'is_dealer')
          bool? isDealer,
      @JsonKey(name: 'country_id')
          List<Country>? country,
      @JsonKey(name: 'state_id')
          List<State>? state,
      String? zip,
      @JsonKey(name: 'currency_id')
          List<Currency>? currency,
      @JsonKey(name: 'contact_address')
          String? contactAddress,
      @JsonKey(name: 'contact_address_complete')
          String? contactAddressComplete}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  @JsonKey(name: 'image_1920')
  String? get profilePicture;
  @override
  @JsonKey(name: 'image_256')
  String? get avatar;
  @override
  String? get type;
  @override
  String? get phone;
  @override
  String? get mobile;
  @override
  @JsonKey(name: 'is_dealer')
  bool? get isDealer;
  @override
  @JsonKey(name: 'country_id')
  List<Country>? get country;
  @override
  @JsonKey(name: 'state_id')
  List<State>? get state;
  @override
  String? get zip;
  @override
  @JsonKey(name: 'currency_id')
  List<Currency>? get currency;
  @override
  @JsonKey(name: 'contact_address')
  String? get contactAddress;
  @override
  @JsonKey(name: 'contact_address_complete')
  String? get contactAddressComplete;
  @override
  @JsonKey(ignore: true)
  _$UserModelCopyWith<_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
