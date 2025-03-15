import 'package:flutter/material.dart';
import 'package:flutter_lesson_2/extension/context_extension.dart';
import 'package:flutter_lesson_2/models/profile_model.dart';
import 'package:flutter_lesson_2/views/profile_detail/profile_detail_view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  //final List<String> _nameList = ["Umut", "Bahadır", "Kılıc"];

  // Future<void> _profileOnTap(BuildContext context, Widget screen) async {
  //   await context.push(screen);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"), centerTitle: true),

      //kaydırılabilir ekran imkanı sunar (listView)
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: ProfileModel.exampleList.length,
          itemBuilder: (context, index) {
            final model = ProfileModel.exampleList[index];

            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => ProfileDetailView(
                            profileModel: ProfileModel.exampleList[index],
                          ),
                    ),
                  );
                },
                contentPadding: EdgeInsets.all(4),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(model.imageUrl),
                ),
                title: Text(
                  model.name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                subtitle: Text(
                  model.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                trailing: Icon(Icons.chevron_right),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ExampleListView extends StatelessWidget {
  const ExampleListView({super.key, required List<String> nameList})
    : _nameList = nameList;

  final List<String> _nameList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (context, index) => SizedBox(height: 16),
      itemBuilder: (context, index) {
        return Text(
          _nameList[index],
          style: Theme.of(context).textTheme.headlineMedium,
        );
      },
    );
  }
}
