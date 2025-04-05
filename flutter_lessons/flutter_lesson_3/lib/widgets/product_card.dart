import 'package:flutter/material.dart';
import 'package:flutter_lesson_3/product_model.dart';
import 'package:flutter_lesson_3/rating_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({required this.productModel, super.key});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [
            Image.network(
              productModel.image ?? "",
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            Text(
              productModel.title ?? "No title",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              productModel.description ?? "Veri yok",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (productModel.rating != null)
                  RatingBar(ratingModel: productModel.rating!),
                Text("${productModel.price.toString()} ₺"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RatingBar extends StatelessWidget {
  const RatingBar({super.key, required this.ratingModel});
  final RatingModel ratingModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.amber),
        Text(ratingModel.rate.toString()),
        const SizedBox(width: 4),
        Text(ratingModel.count.toString()),
      ],
    );
  }
}
