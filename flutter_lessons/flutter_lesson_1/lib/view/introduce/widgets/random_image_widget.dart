import 'package:flutter/material.dart';

class RandomImageWidget extends StatelessWidget {
  const RandomImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      width: 200,
      height: 200,
      fit: BoxFit.fill,
      "https://picsum.photos/200/300",
    );
  }
}
