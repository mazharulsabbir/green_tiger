import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
class CartModel with _$CartModel {
  CartModel._();
  factory CartModel({
    String? name,
    String? description,
    String? imageUrl,
    String? price,
    String? quantity,
    String? total,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
