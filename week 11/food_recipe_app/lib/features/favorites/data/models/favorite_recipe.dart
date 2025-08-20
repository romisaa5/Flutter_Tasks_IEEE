class FavoriteRecipe {
  final String id;
  final String title;
  final String imageUrl;

  FavoriteRecipe({
    required this.id,
    required this.title,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'imageUrl': imageUrl};
  }

  factory FavoriteRecipe.fromMap(Map<String, dynamic> map) {
    return FavoriteRecipe(
      id: map['id'] as String,
      title: map['title'] as String,
      imageUrl: map['imageUrl'] as String,
    );
  }
}
