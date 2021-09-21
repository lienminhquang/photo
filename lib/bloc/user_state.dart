part of 'user_bloc.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {}

class UserLoaded extends UserState {
  final User user;

  UserLoaded(this.user);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserLoaded && other.user == user;
  }

  @override
  int get hashCode => user.hashCode;
}
