class RatingModel {
  final double? rate;
  final int? count;

  RatingModel({this.rate, this.count});

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(
      rate: double.tryParse(json['rate'].toString()),
      count: int.tryParse(json['count'].toString()),
    );
  }
}
