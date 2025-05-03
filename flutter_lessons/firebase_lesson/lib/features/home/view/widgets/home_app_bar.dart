import 'package:firebase_lesson/features/cart/provider/cart_provider.dart';
import 'package:firebase_lesson/features/cart/view/cart_list_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeAppBar extends StatelessWidget implements PreferredSize {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Home  View"),
      // actions: [
      //   Consumer<CartProvider>(
      //     builder: (context, cartData, child) {
      //       return Badge.count(
      //         count: cartData.productList.length,
      //         child: IconButton(
      //           onPressed: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => CartListView()),
      //             );
      //           },
      //           icon: Icon(Icons.shopping_basket),
      //         ),
      //       );
      //     },
      //   ),
      // ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}
