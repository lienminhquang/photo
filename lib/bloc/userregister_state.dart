part of 'userregister_bloc.dart';

@immutable
abstract class UserregisterState {}

class UserregisterInitial extends UserregisterState {}

class UserRegisterSuccessed extends UserregisterState {}

class UserRegisterFailed extends UserregisterState {
  final UserRegiserFailedResult result;

  UserRegisterFailed(this.result);
}
