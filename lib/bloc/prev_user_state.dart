part of 'prev_user_bloc.dart';

@immutable
abstract class PrevUserState {}

class PrevUserInitial extends PrevUserState {}

class PrevUserLoaded implements PrevUserState {
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
