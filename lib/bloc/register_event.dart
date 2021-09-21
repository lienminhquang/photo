part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent {}

class RegisteredEvent implements RegisterEvent {
  final String username;
  final String password;

  RegisteredEvent(this.username, this.password);
}
