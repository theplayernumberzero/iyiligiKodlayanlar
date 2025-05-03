import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel extends Equatable {
  ProductModel({this.id, this.title, this.count, this.isDelivered});

  final String? id;
  final String? title;
  final int? count;
  final bool? isDelivered;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

  ProductModel copyWith({String? title, int? count, bool? isDelivered}) {
    return ProductModel(
      id: id,
      title: title ?? this.title,
      count: count ?? this.count,
      isDelivered: isDelivered ?? this.isDelivered,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, title, count, isDelivered];
}
