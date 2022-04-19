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
      String? state,
      @JsonKey(name: 'amount_tax') double? amountTax,
      @JsonKey(name: 'amount_tax_signed') double? amountTaxSigned,
      @JsonKey(name: 'amount_total') double? amountTotal,
      @JsonKey(name: 'amount_total_signed') double? amountTotalSigned,
      @JsonKey(name: 'amount_untaxed') double? amountUntaxed,
      @JsonKey(name: 'amount_untaxed_signed') double? amountUntaxedSigned,
      String? date,
      @JsonKey(name: 'invoice_date') String? invoiceDate,
      @JsonKey(name: 'invoice_date_due') String? invoiceDueDate}) {
    return _PaymentModel(
      id: id,
      name: name,
      state: state,
      amountTax: amountTax,
      amountTaxSigned: amountTaxSigned,
      amountTotal: amountTotal,
      amountTotalSigned: amountTotalSigned,
      amountUntaxed: amountUntaxed,
      amountUntaxedSigned: amountUntaxedSigned,
      date: date,
      invoiceDate: invoiceDate,
      invoiceDueDate: invoiceDueDate,
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
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_tax')
  double? get amountTax => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_tax_signed')
  double? get amountTaxSigned => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_total')
  double? get amountTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_total_signed')
  double? get amountTotalSigned => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_untaxed')
  double? get amountUntaxed => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_untaxed_signed')
  double? get amountUntaxedSigned => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_date')
  String? get invoiceDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_date_due')
  String? get invoiceDueDate => throw _privateConstructorUsedError;

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
      String? state,
      @JsonKey(name: 'amount_tax') double? amountTax,
      @JsonKey(name: 'amount_tax_signed') double? amountTaxSigned,
      @JsonKey(name: 'amount_total') double? amountTotal,
      @JsonKey(name: 'amount_total_signed') double? amountTotalSigned,
      @JsonKey(name: 'amount_untaxed') double? amountUntaxed,
      @JsonKey(name: 'amount_untaxed_signed') double? amountUntaxedSigned,
      String? date,
      @JsonKey(name: 'invoice_date') String? invoiceDate,
      @JsonKey(name: 'invoice_date_due') String? invoiceDueDate});
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
    Object? state = freezed,
    Object? amountTax = freezed,
    Object? amountTaxSigned = freezed,
    Object? amountTotal = freezed,
    Object? amountTotalSigned = freezed,
    Object? amountUntaxed = freezed,
    Object? amountUntaxedSigned = freezed,
    Object? date = freezed,
    Object? invoiceDate = freezed,
    Object? invoiceDueDate = freezed,
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
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      amountTax: amountTax == freezed
          ? _value.amountTax
          : amountTax // ignore: cast_nullable_to_non_nullable
              as double?,
      amountTaxSigned: amountTaxSigned == freezed
          ? _value.amountTaxSigned
          : amountTaxSigned // ignore: cast_nullable_to_non_nullable
              as double?,
      amountTotal: amountTotal == freezed
          ? _value.amountTotal
          : amountTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      amountTotalSigned: amountTotalSigned == freezed
          ? _value.amountTotalSigned
          : amountTotalSigned // ignore: cast_nullable_to_non_nullable
              as double?,
      amountUntaxed: amountUntaxed == freezed
          ? _value.amountUntaxed
          : amountUntaxed // ignore: cast_nullable_to_non_nullable
              as double?,
      amountUntaxedSigned: amountUntaxedSigned == freezed
          ? _value.amountUntaxedSigned
          : amountUntaxedSigned // ignore: cast_nullable_to_non_nullable
              as double?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceDate: invoiceDate == freezed
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceDueDate: invoiceDueDate == freezed
          ? _value.invoiceDueDate
          : invoiceDueDate // ignore: cast_nullable_to_non_nullable
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
      String? state,
      @JsonKey(name: 'amount_tax') double? amountTax,
      @JsonKey(name: 'amount_tax_signed') double? amountTaxSigned,
      @JsonKey(name: 'amount_total') double? amountTotal,
      @JsonKey(name: 'amount_total_signed') double? amountTotalSigned,
      @JsonKey(name: 'amount_untaxed') double? amountUntaxed,
      @JsonKey(name: 'amount_untaxed_signed') double? amountUntaxedSigned,
      String? date,
      @JsonKey(name: 'invoice_date') String? invoiceDate,
      @JsonKey(name: 'invoice_date_due') String? invoiceDueDate});
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
    Object? state = freezed,
    Object? amountTax = freezed,
    Object? amountTaxSigned = freezed,
    Object? amountTotal = freezed,
    Object? amountTotalSigned = freezed,
    Object? amountUntaxed = freezed,
    Object? amountUntaxedSigned = freezed,
    Object? date = freezed,
    Object? invoiceDate = freezed,
    Object? invoiceDueDate = freezed,
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
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      amountTax: amountTax == freezed
          ? _value.amountTax
          : amountTax // ignore: cast_nullable_to_non_nullable
              as double?,
      amountTaxSigned: amountTaxSigned == freezed
          ? _value.amountTaxSigned
          : amountTaxSigned // ignore: cast_nullable_to_non_nullable
              as double?,
      amountTotal: amountTotal == freezed
          ? _value.amountTotal
          : amountTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      amountTotalSigned: amountTotalSigned == freezed
          ? _value.amountTotalSigned
          : amountTotalSigned // ignore: cast_nullable_to_non_nullable
              as double?,
      amountUntaxed: amountUntaxed == freezed
          ? _value.amountUntaxed
          : amountUntaxed // ignore: cast_nullable_to_non_nullable
              as double?,
      amountUntaxedSigned: amountUntaxedSigned == freezed
          ? _value.amountUntaxedSigned
          : amountUntaxedSigned // ignore: cast_nullable_to_non_nullable
              as double?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceDate: invoiceDate == freezed
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceDueDate: invoiceDueDate == freezed
          ? _value.invoiceDueDate
          : invoiceDueDate // ignore: cast_nullable_to_non_nullable
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
      this.state,
      @JsonKey(name: 'amount_tax') this.amountTax,
      @JsonKey(name: 'amount_tax_signed') this.amountTaxSigned,
      @JsonKey(name: 'amount_total') this.amountTotal,
      @JsonKey(name: 'amount_total_signed') this.amountTotalSigned,
      @JsonKey(name: 'amount_untaxed') this.amountUntaxed,
      @JsonKey(name: 'amount_untaxed_signed') this.amountUntaxedSigned,
      this.date,
      @JsonKey(name: 'invoice_date') this.invoiceDate,
      @JsonKey(name: 'invoice_date_due') this.invoiceDueDate});

  factory _$_PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? state;
  @override
  @JsonKey(name: 'amount_tax')
  final double? amountTax;
  @override
  @JsonKey(name: 'amount_tax_signed')
  final double? amountTaxSigned;
  @override
  @JsonKey(name: 'amount_total')
  final double? amountTotal;
  @override
  @JsonKey(name: 'amount_total_signed')
  final double? amountTotalSigned;
  @override
  @JsonKey(name: 'amount_untaxed')
  final double? amountUntaxed;
  @override
  @JsonKey(name: 'amount_untaxed_signed')
  final double? amountUntaxedSigned;
  @override
  final String? date;
  @override
  @JsonKey(name: 'invoice_date')
  final String? invoiceDate;
  @override
  @JsonKey(name: 'invoice_date_due')
  final String? invoiceDueDate;

  @override
  String toString() {
    return 'PaymentModel(id: $id, name: $name, state: $state, amountTax: $amountTax, amountTaxSigned: $amountTaxSigned, amountTotal: $amountTotal, amountTotalSigned: $amountTotalSigned, amountUntaxed: $amountUntaxed, amountUntaxedSigned: $amountUntaxedSigned, date: $date, invoiceDate: $invoiceDate, invoiceDueDate: $invoiceDueDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.amountTax, amountTax) &&
            const DeepCollectionEquality()
                .equals(other.amountTaxSigned, amountTaxSigned) &&
            const DeepCollectionEquality()
                .equals(other.amountTotal, amountTotal) &&
            const DeepCollectionEquality()
                .equals(other.amountTotalSigned, amountTotalSigned) &&
            const DeepCollectionEquality()
                .equals(other.amountUntaxed, amountUntaxed) &&
            const DeepCollectionEquality()
                .equals(other.amountUntaxedSigned, amountUntaxedSigned) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.invoiceDate, invoiceDate) &&
            const DeepCollectionEquality()
                .equals(other.invoiceDueDate, invoiceDueDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(amountTax),
      const DeepCollectionEquality().hash(amountTaxSigned),
      const DeepCollectionEquality().hash(amountTotal),
      const DeepCollectionEquality().hash(amountTotalSigned),
      const DeepCollectionEquality().hash(amountUntaxed),
      const DeepCollectionEquality().hash(amountUntaxedSigned),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(invoiceDate),
      const DeepCollectionEquality().hash(invoiceDueDate));

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
          String? state,
          @JsonKey(name: 'amount_tax') double? amountTax,
          @JsonKey(name: 'amount_tax_signed') double? amountTaxSigned,
          @JsonKey(name: 'amount_total') double? amountTotal,
          @JsonKey(name: 'amount_total_signed') double? amountTotalSigned,
          @JsonKey(name: 'amount_untaxed') double? amountUntaxed,
          @JsonKey(name: 'amount_untaxed_signed') double? amountUntaxedSigned,
          String? date,
          @JsonKey(name: 'invoice_date') String? invoiceDate,
          @JsonKey(name: 'invoice_date_due') String? invoiceDueDate}) =
      _$_PaymentModel;

  factory _PaymentModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get state;
  @override
  @JsonKey(name: 'amount_tax')
  double? get amountTax;
  @override
  @JsonKey(name: 'amount_tax_signed')
  double? get amountTaxSigned;
  @override
  @JsonKey(name: 'amount_total')
  double? get amountTotal;
  @override
  @JsonKey(name: 'amount_total_signed')
  double? get amountTotalSigned;
  @override
  @JsonKey(name: 'amount_untaxed')
  double? get amountUntaxed;
  @override
  @JsonKey(name: 'amount_untaxed_signed')
  double? get amountUntaxedSigned;
  @override
  String? get date;
  @override
  @JsonKey(name: 'invoice_date')
  String? get invoiceDate;
  @override
  @JsonKey(name: 'invoice_date_due')
  String? get invoiceDueDate;
  @override
  @JsonKey(ignore: true)
  _$PaymentModelCopyWith<_PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
