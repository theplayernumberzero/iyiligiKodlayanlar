import 'package:flutter_lesson_3/rating_model.dart';

class ProductModel {
  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? category;
  final String? image;
  final RatingModel? rating;

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: int.tryParse(json["id"].toString()),
      title: json["title"],
      price: double.tryParse(json["price"].toString()),
      description: json["description"],
      category: json["category"],
      image: json["image"],
      rating: RatingModel.fromJson(json['rating']),
    );
  }

  ProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });
}
