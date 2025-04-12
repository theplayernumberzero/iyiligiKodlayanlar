import 'package:firebase_lesson/model/product_model.dart';
import 'package:firebase_lesson/service/product_service.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final productService = ProductService();

    return Scaffold(
      appBar: AppBar(title: Text('Product List')),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final product = ProductModel(
            title: 'kalem',
            count: 3,
            isDelivered: true,
          );
          await productService.updateProduct('ZVP5exjWqyFiYEHfNgxF', product);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
///ödev? haftaya gelmek!!!!