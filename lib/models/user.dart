class User {
  final String name;
  final String tag;
  final String userName;
  final String? imagePath;

  User(
      {required this.name,
      required this.tag,
      required this.userName,
      this.imagePath});
}
