class UserDataModel {
  final String? imageUrl;
  final String name;
  final String email;
  final String password;

  UserDataModel({
    this.imageUrl,
    required this.name,
    required this.email,
    required this.password,
  });
}
