part of 'userregister_bloc.dart';

@immutable
abstract class UserregisterState {}

class UserregisterInitial extends UserregisterState {}

class UserRegisterSuccessed extends UserregisterState {}

class UserRegisterFailed extends UserregisterState {
  final UserRegiserFailedResult result;

  UserRegisterFailed(this.result);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserRegisterFailed && other.result == result;
  }

  @override
  int get hashCode => result.hashCode;
}
