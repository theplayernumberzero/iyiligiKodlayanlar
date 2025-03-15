final class ProfileModel {
  final String name;
  final String imageUrl;
  final String description;
  final String title;

  ProfileModel({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.title,
  });

  static List<ProfileModel> exampleList = [
    ProfileModel(
      name: "Bahadir",
      imageUrl: 'https://picsum.photos/200/300',
      description: "Mobilci",
      title: 'Developer',
    ),
    ProfileModel(
      name: "Umut",
      imageUrl: 'https://picsum.photos/200/300',
      description: "Webci",
      title: 'Developer',
    ),
  ];
}
