part of 'userregister_bloc.dart';

@immutable
abstract class UserRegisterEvent {}

class UserRegisteredEvent implements UserRegisterEvent {
  final String username;
  final String password;

  UserRegisteredEvent(this.username, this.password);
}
