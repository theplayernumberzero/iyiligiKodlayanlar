import 'package:flutter/material.dart';

class Work1 extends StatelessWidget {
  const Work1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Work1"), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(color: Colors.amber, child: Text("Tarih")),
                Container(
                  color: Colors.red,
                  child: Text(DateTime.now().toString().split(" ")[0]),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(height: 100, color: Colors.amberAccent),
                ),
                Expanded(
                  flex: 1,
                  child: Container(height: 100, color: Colors.teal),
                ),
                Expanded(
                  flex: 2,
                  child: Container(height: 100, color: Colors.blue),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  width: 100,
                  height: 100,
                  "https://picsum.photos/200/300",
                ),
                SizedBox(width: 16),
                Image.asset(width: 100, height: 100, "assets/download.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
