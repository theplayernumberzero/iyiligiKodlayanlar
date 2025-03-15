import 'package:flutter/material.dart';
import 'package:flutter_lesson_2/models/post_model.dart';
import 'package:flutter_lesson_2/views/home/work_2.dart';

class Work1 extends StatelessWidget {
  Work1({super.key});
  final List<PostModel> _postModels = [
    PostModel(
      kullaniciAdi: "bxk",
      imageUrl: "https://picsum.photos/200/300",
      description: "my first post 1",
      likeCount: 10,
      commentCount: 1,
    ),
    PostModel(
      kullaniciAdi: "kilic",
      imageUrl: "https://picsum.photos/200/300",
      description: "my first post 2",
      likeCount: 20,
      commentCount: 2,
    ),
    PostModel(
      kullaniciAdi: "ubk",
      imageUrl: "https://picsum.photos/200/300",
      description: "my first post 1",
      likeCount: 30,
      commentCount: 3,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Work 1"), centerTitle: true),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Work2(postModel: _postModels[index]),
                  ),
                );
              },
              leading: CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(_postModels[index].imageUrl),
              ),
              title: Text(
                _postModels[index].kullaniciAdi,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              subtitle: Text(_postModels[index].description),
              trailing: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.heart_broken),
                        Text(_postModels[index].likeCount.toString()),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.comment),
                        Text(_postModels[index].commentCount.toString()),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 12),
        itemCount: _postModels.length,
      ),
    );
  }
}

extension ContextExtension on BuildContext {
  Future<void> push(Widget screen) async {
    await Navigator.push(this, MaterialPageRoute(builder: (context) => screen));
  }
}
