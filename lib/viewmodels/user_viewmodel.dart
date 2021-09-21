import 'package:photo/models/user.dart';
import 'package:photo/models/user_repository.dart';

class UserViewModel {
  final UserRepository userRepository;

  UserViewModel({required this.userRepository});

  Future<User?> getPreviousLoginedUser() {
    return userRepository.getPreviousLoginedUser();
  }
}
