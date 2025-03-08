import 'package:flutter/material.dart';
import 'package:flutter_lesson_1/view/introduce/introduce.dart';
import 'package:flutter_lesson_1/view/stateful/intermediate_view.dart';
import 'package:flutter_lesson_1/view/work2/work2.dart';
import 'package:flutter_lesson_1/view/work_1/work_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Work2(),
    );
  }
}
