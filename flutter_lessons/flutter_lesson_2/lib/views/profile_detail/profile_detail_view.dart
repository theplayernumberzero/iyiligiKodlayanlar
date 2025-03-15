import 'package:flutter/material.dart';
import 'package:flutter_lesson_2/models/profile_model.dart';

class ProfileDetailView extends StatelessWidget {
  ProfileDetailView({super.key, required this.profileModel});

  final ProfileModel profileModel;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: Text("Profile Detail"), centerTitle: true),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(profileModel.imageUrl),
                ),
                SizedBox(height: 16),
                Text(
                  profileModel.name,
                  style: textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                Text(
                  profileModel.title,
                  style: textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Text(
                  profileModel.description,
                  style: textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Geriye dön"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
