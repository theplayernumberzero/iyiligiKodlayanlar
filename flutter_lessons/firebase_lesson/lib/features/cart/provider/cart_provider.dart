import 'package:firebase_lesson/model/product_model.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<ProductModel> productList = [];

  void addProductToCard(ProductModel product) {
    productList.add(product);
    notifyListeners(); //dinleyicilere güncelleme yap.
  }

  void removeProductFromCard(ProductModel product) {
    productList.remove(product);
    notifyListeners(); //dinleyicilere güncelleme yap.
  }

  void clearCart() {
    productList.clear();
    notifyListeners(); //dinleyicilere güncelleme yap.
  }

  bool isInCart(ProductModel product) {
    return productList.contains(product);
  }

  void changeProductCartStatus(ProductModel product) {
    final status = isInCart(product);
    if (status) {
      removeProductFromCard(product);
      return;
    }
    addProductToCard(product);
    return;
  }
}
