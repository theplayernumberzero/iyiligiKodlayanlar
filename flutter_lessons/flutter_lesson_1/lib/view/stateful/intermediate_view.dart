import 'dart:math';

import 'package:flutter/material.dart';

class IntermediateView extends StatefulWidget {
  const IntermediateView({super.key});

  @override
  State<IntermediateView> createState() => _IntermediateViewState();
}

class _IntermediateViewState extends State<IntermediateView> {
  final TextEditingController _nameController = TextEditingController();

  String name = '';
  int count = 1;

  void rollDice() {
    setState(() {
      count = Random().nextInt(6) + 1;
      name = _nameController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Widget"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your name",
                suffixText: 'SUFFİX',
                prefixText: 'PREFIX ₺',
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    rollDice();
                  },
                  child: Text("Roll dice"),
                ),
                TextButton(onPressed: () {}, child: Text("Reset Dice")),
              ],
            ),
            Text("$name"),
            Text("Dice $count", style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ),
    );
  }
}
