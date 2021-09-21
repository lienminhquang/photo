import 'package:photo/models/user.dart';
import 'package:photo/models/user_register_result.dart';
import 'package:photo/models/user_repository.dart';

class UserViewModel {
  final UserRepository userRepository;

  UserViewModel({required this.userRepository});

  Future<User?> getPreviousLoginedUser() {
    return userRepository.getPreviousLoginedUser();
  }

  Future<UserRegisterResult> register(String username, String password) {
    return userRepository.register(username, password);
  }
}
