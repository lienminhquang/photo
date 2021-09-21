import 'package:photo/models/user.dart';

class UserRepository {
  final List<User> _users = [
    User(
        name: "Pawel Czerwinski",
        tag: "@pawel_czerwinski",
        userName: "the_jane",
        imagePath: "assets/images/avar1.png"),
    User(
        name: "Quang Lien",
        tag: "@quang_lien",
        userName: "quang",
        imagePath: "assets/images/avar2.png")
  ];

  Future<User?> getPreviousLoginedUser() {
    return Future(() {
      return _users[0];
    });
  }

  Future<User> login(String username, String password) {
    for (var user in _users) {
      if (user.userName == username) {
        return Future(() {
          return user;
        });
      }
    }
    throw LoginException("Login failed!");
  }
}

class LoginException implements Exception {
  final String message;
  LoginException(this.message);
}
