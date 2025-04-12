class ProductModel {
  ProductModel({this.id, this.title, this.count, this.isDelivered});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'].toString(),
      title: json['title'].toString(),
      count: int.tryParse(json['count'].toString()),
      isDelivered: bool.tryParse(json['isDelivered'].toString()),
    );
  }

  final String? id;
  final String? title;
  final int? count;
  final bool? isDelivered;

  Map<String, dynamic> toJson() {
    return {'title': title, 'count': count, 'isDelivered': isDelivered};
  }
}
