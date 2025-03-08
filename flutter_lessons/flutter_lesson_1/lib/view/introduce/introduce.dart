import 'package:flutter/material.dart';
import 'package:flutter_lesson_1/view/introduce/widgets/name_widget.dart';
import 'package:flutter_lesson_1/view/introduce/widgets/random_image_widget.dart';

class Introduce extends StatelessWidget {
  const Introduce({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduce View"),
        actions: [Text("Actions")],
        leading: Icon(Icons.chevron_left),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NameWidget(),
          SizedBox(height: 16),
          Text("Text1"),
          Container(width: 100, height: 100, color: Colors.blue),
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(8),
            child: Text("Bu bir container"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("User info 1"),
              Text("User info 2"),
              Text("User info 3"),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(height: 100, color: Colors.red),
              ),
              Expanded(
                flex: 4,
                child: Container(height: 100, color: Colors.blue),
              ),
            ],
          ),
          RandomImageWidget(),
        ],
      ),
    );
  }
}
