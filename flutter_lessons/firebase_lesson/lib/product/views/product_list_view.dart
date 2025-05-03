import 'package:firebase_lesson/features/cart/provider/cart_provider.dart';
import 'package:firebase_lesson/model/product_model.dart';
import 'package:firebase_lesson/service/product_service.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductListView extends StatelessWidget {
  ProductListView({super.key});
  final ProductService _productService = ProductService();

  @override
  Widget build(BuildContext context) {
    return FirestoreListView(
      query: _productService.productCollectionConvertor,
      itemBuilder: (context, snapshot) {
        final product = snapshot.data();

        if (product == null) {
          return Text("Veri bulunamadi..");
        }
        return Card(
          child: Consumer<CartProvider>(
            builder: (context, cartData, child) {
              return ListTile(
                title: Text(product.title ?? "Ürün yok"),
                subtitle: Text(
                  product.count.toString() ?? "Ürün adedi mevcut değil",
                ),
                trailing: TextButton(
                  onPressed: () {
                    cartData.changeProductCartStatus(product);
                  },
                  child: Text(
                    cartData.isInCart(product)
                        ? "Remove from product"
                        : "Add to card",
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
