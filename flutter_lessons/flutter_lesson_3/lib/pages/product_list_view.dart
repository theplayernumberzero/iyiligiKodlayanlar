import 'package:flutter/material.dart';
import 'package:flutter_lesson_3/product_model.dart';
import 'package:flutter_lesson_3/product_service.dart';
import 'package:flutter_lesson_3/widgets/product_card.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  final service = ProductService();

  List<ProductModel> products = [];
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
        centerTitle: true,
        actions: [
          // IconButton(
          //   onPressed: () {
          //     _fetchProduct();
          //   },
          //   icon: Icon(Icons.download),
          // ),
        ],
      ),
      body:
          isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(productModel: products[index]);
                },
              ),
    );
  }

  Future<void> _fetchProduct() async {
    setState(() {
      isLoading = true;
    });
    final products_response = await service.getProducts();

    await Future.delayed(Duration(seconds: 2));

    if (products_response == null) {
      return;
    } else {
      setState(() {});
      products = products_response;
    }
    setState(() {
      isLoading = false;
    });
  }
}
