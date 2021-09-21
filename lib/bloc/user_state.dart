part of 'user_bloc.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {}

class PrevUserLoaded implements UserState {
  final User? user;
  PrevUserLoaded(this.user);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PrevUserLoaded && other.user == user;
  }

  @override
  int get hashCode => user.hashCode;
}
