part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginRequestEvent implements LoginEvent {
  final String username;
  final String password;

  LoginRequestEvent(this.username, this.password);
}
