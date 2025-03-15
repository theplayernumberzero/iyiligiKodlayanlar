final class PostModel {
  final String kullaniciAdi;
  final String imageUrl;
  final String description;
  final int likeCount;
  final int commentCount;

  PostModel({
    required this.kullaniciAdi,
    required this.imageUrl,
    required this.description,
    required this.likeCount,
    required this.commentCount,
  });
}
