import 'package:flutter/material.dart';

class ValueNotifierExample extends StatefulWidget {
  const ValueNotifierExample({super.key});

  @override
  State<ValueNotifierExample> createState() => _ValueNotifierExampleState();
}

class _ValueNotifierExampleState extends State<ValueNotifierExample> {
  //Değişiklik olmadığı sürece widgetlar yeniden çizilmeyecek
  ValueNotifier<int> countNotifier = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Value Notifier")),
      body: ValueListenableBuilder(
        //Sadece Text i ValueListenableBuilder ile wraplayebilirsin
        valueListenable: countNotifier,
        builder: (context, value, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(value.toString(), style: TextStyle(fontSize: 48)),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countNotifier.value++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
