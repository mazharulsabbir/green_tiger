// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) {
  return _PaymentModel.fromJson(json);
}

/// @nodoc
class _$PaymentModelTearOff {
  const _$PaymentModelTearOff();

  _PaymentModel call(
      {int? id,
      String? name,
      String? communication,
      String? state,
      double? amount,
      @JsonKey(name: 'payment_date') String? date}) {
    return _PaymentModel(
      id: id,
      name: name,
      communication: communication,
      state: state,
      amount: amount,
      date: date,
    );
  }

  PaymentModel fromJson(Map<String, Object?> json) {
    return PaymentModel.fromJson(json);
  }
}

/// @nodoc
const $PaymentModel = _$PaymentModelTearOff();

/// @nodoc
mixin _$PaymentModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get communication => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_date')
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentModelCopyWith<PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentModelCopyWith<$Res> {
  factory $PaymentModelCopyWith(
          PaymentModel value, $Res Function(PaymentModel) then) =
      _$PaymentModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? communication,
      String? state,
      double? amount,
      @JsonKey(name: 'payment_date') String? date});
}

/// @nodoc
class _$PaymentModelCopyWithImpl<$Res> implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._value, this._then);

  final PaymentModel _value;
  // ignore: unused_field
  final $Res Function(PaymentModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? communication = freezed,
    Object? state = freezed,
    Object? amount = freezed,
    Object? date = freezed,
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
      communication: communication == freezed
          ? _value.communication
          : communication // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PaymentModelCopyWith<$Res>
    implements $PaymentModelCopyWith<$Res> {
  factory _$PaymentModelCopyWith(
          _PaymentModel value, $Res Function(_PaymentModel) then) =
      __$PaymentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? communication,
      String? state,
      double? amount,
      @JsonKey(name: 'payment_date') String? date});
}

/// @nodoc
class __$PaymentModelCopyWithImpl<$Res> extends _$PaymentModelCopyWithImpl<$Res>
    implements _$PaymentModelCopyWith<$Res> {
  __$PaymentModelCopyWithImpl(
      _PaymentModel _value, $Res Function(_PaymentModel) _then)
      : super(_value, (v) => _then(v as _PaymentModel));

  @override
  _PaymentModel get _value => super._value as _PaymentModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? communication = freezed,
    Object? state = freezed,
    Object? amount = freezed,
    Object? date = freezed,
  }) {
    return _then(_PaymentModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      communication: communication == freezed
          ? _value.communication
          : communication // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentModel implements _PaymentModel {
  const _$_PaymentModel(
      {this.id,
      this.name,
      this.communication,
      this.state,
      this.amount,
      @JsonKey(name: 'payment_date') this.date});

  factory _$_PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? communication;
  @override
  final String? state;
  @override
  final double? amount;
  @override
  @JsonKey(name: 'payment_date')
  final String? date;

  @override
  String toString() {
    return 'PaymentModel(id: $id, name: $name, communication: $communication, state: $state, amount: $amount, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.communication, communication) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(communication),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$PaymentModelCopyWith<_PaymentModel> get copyWith =>
      __$PaymentModelCopyWithImpl<_PaymentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentModelToJson(this);
  }
}

abstract class _PaymentModel implements PaymentModel {
  const factory _PaymentModel(
      {int? id,
      String? name,
      String? communication,
      String? state,
      double? amount,
      @JsonKey(name: 'payment_date') String? date}) = _$_PaymentModel;

  factory _PaymentModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get communication;
  @override
  String? get state;
  @override
  double? get amount;
  @override
  @JsonKey(name: 'payment_date')
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$PaymentModelCopyWith<_PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
