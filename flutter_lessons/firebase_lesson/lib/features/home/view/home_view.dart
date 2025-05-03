import 'package:firebase_lesson/features/cart/provider/cart_provider.dart';
import 'package:firebase_lesson/features/cart/view/cart_list_view.dart';
import 'package:firebase_lesson/features/home/view/widgets/home_app_bar.dart';
import 'package:firebase_lesson/model/product_model.dart';
import 'package:firebase_lesson/product/views/product_list_view.dart';
import 'package:firebase_lesson/service/product_service.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  final List<Widget> pages = [
    ProductListView(),
    CartListView(),
    SizedBox.shrink(),
  ];
  int currentIndex = 0;

  late final TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: tabbarItems.length, vsync: this);
  }

  final tabbarItems = <Widget>[
    Icon(Icons.home),
    Consumer<CartProvider>(
      builder: (context, cartData, chils) {
        return Badge.count(
          count: cartData.productList.length,
          child: Icon(Icons.shopping_cart),
        );
      },
    ),
    Icon(Icons.person),
  ];

  final navbarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Product List"),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "User"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      // body: pages[currentIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   items: navbarItems,
      //   currentIndex: currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      // ),
      body: TabBarView(children: pages, controller: tabController),
      bottomNavigationBar: SafeArea(
        child: TabBar(tabs: tabbarItems, controller: tabController),
      ),
    );
  }
}


// bottomNavigationBar: SafeArea(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             IconButton(
//               onPressed: () {
//                 setState(() {
//                   currentIndex = 0;
//                 });
//               },
//               icon: Icon(Icons.home),
//             ),
//             IconButton(
//               onPressed: () {
//                 setState(() {
//                   currentIndex = 1;
//                 });
//               },
//               icon: Icon(Icons.shopping_cart),
//             ),
//             IconButton(onPressed: () {}, icon: Icon(Icons.person)),
//           ],
//         ),
//       ),