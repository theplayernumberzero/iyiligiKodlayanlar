import 'package:firebase_lesson/model/product_model.dart';
import 'package:firebase_lesson/service/auth_service.dart';
import 'package:firebase_lesson/service/product_service.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';

class FirebaseUiScreen extends StatefulWidget {
  const FirebaseUiScreen({super.key});

  @override
  State<FirebaseUiScreen> createState() => _FirebaseUiScreenState();
}

class _FirebaseUiScreenState extends State<FirebaseUiScreen> {
  final _productService = ProductService();
  final _authService = AuthService();

  Future<void> _updateIsDelivered(ProductModel model) async {
    final docId = model.id;
    if (docId == null) return;
    final oldValue = model.isDelivered ?? false;
    final newProduct = model.copyWith(isDelivered: !oldValue);
    await _productService.updateProduct(docId, newProduct);
  }

  Future<void> _addProduct(ProductModel model) async {
    await _productService.addProduct(model);
  }

  Future<void> _deleteProduct(String id) async {
    await _productService.deleteProduct(id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase UI"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              _authService.login("bahadir@gmail.com", "123456");
            },
            icon: Icon(Icons.person),
          ),
          IconButton(
            onPressed: () {
              _authService.logout();
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: FirestoreListView(
        query: _productService.productCollectionConvertor,
        itemBuilder: (context, snapshot) {
          final product = snapshot.data();

          if (product == null) {
            return Text("Veri bulunamadi..");
          }
          return Card(
            child: ListTile(
              title: Text(product.title ?? "Ürün yok"),
              subtitle: Text(
                product.count.toString() ?? "Ürün adedi mevcut değil",
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () async {
                      await _updateIsDelivered(product);
                    },
                    icon: Icon(
                      Icons.done,
                      color:
                          product.isDelivered ?? false
                              ? Colors.green
                              : Colors.red,
                    ),
                  ),
                  SizedBox(width: 4),
                  IconButton(
                    onPressed: () async {
                      if (product.id == null) return;
                      await _deleteProduct(product.id!);
                    },
                    icon: Icon(Icons.delete),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          ProductModel newModel = ProductModel(
            title: "Kitaplık",
            count: 3,
            isDelivered: false,
          );
          await _addProduct(newModel);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
