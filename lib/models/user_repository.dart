import 'package:photo/models/user.dart';
import 'package:photo/models/login_result.dart';
import 'package:photo/models/user_register_result.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UserRepository {
  User? currentUser;
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

  Future<User?> getCurrentUser() {
    return Future(() => currentUser);
  }

  Future<UserRegisterResult> register(String username, String password) {
    for (var user in _users) {
      if (user.userName == username) {
        return Future(() => UserRegiserFailedResult("Username aready exist"));
      }
    }
    _users.add(User(userName: username, tag: "@" + username, name: username));
    return Future(() => UserRegiserSuccessedResult());
  }

  Future<LoginResult> login(String username, String password) {
    for (var user in _users) {
      if (user.userName == username) {
        currentUser = user;
        return Future(() {
          return LoginSuccessedResult(user);
        });
      }
    }
    return Future(() => LoginFailedResult("Username or password is wrong"));
  }
}
