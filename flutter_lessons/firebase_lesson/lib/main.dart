import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_lesson/features/cart/provider/cart_provider.dart';
import 'package:firebase_lesson/features/home/view/home_view.dart';
import 'package:firebase_lesson/firebase_options.dart';
import 'package:firebase_lesson/views/firebase_ui_screen.dart';
import 'package:firebase_lesson/views/main_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  //Uygulama başlamadan önceki kısımlar
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CartProvider>(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: HomeView(),
      ),
    );
  }
}
