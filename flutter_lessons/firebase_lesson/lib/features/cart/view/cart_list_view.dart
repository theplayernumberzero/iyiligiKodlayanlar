import 'package:firebase_lesson/features/cart/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CartProvider>().clearCart();
        },
        child: Icon(Icons.clear),
      ),
      appBar: AppBar(title: Text("My cart"), centerTitle: true),
      body: Consumer<CartProvider>(
        builder: (context, cartData, child) {
          return ListView.builder(
            itemCount: cartData.productList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(cartData.productList[index].title.toString()),
                subtitle: Text(cartData.productList[index].id.toString()),
                leading: Text(cartData.productList[index].count.toString()),
              );
            },
          );
        },
      ),
    );
  }
}
