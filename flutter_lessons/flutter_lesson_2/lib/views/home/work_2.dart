import 'package:flutter/material.dart';
import 'package:flutter_lesson_2/models/post_model.dart';

class Work2 extends StatelessWidget {
  Work2({super.key, required this.postModel});
  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: Text("Work 2"), centerTitle: true),
      body: Column(
        children: [
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(postModel.imageUrl),
              ),
              title: Text(
                postModel.kullaniciAdi,
                style: textTheme.headlineMedium,
              ),
              subtitle: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Begeni sayisi: ${postModel.likeCount}"),
                  Text("Yorum sayisi: ${postModel.commentCount}"),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          Card(child: Text(postModel.description)),
        ],
      ),
    );
  }
}
