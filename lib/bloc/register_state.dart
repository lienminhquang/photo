part of 'register_bloc.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterSuccessed extends RegisterState {}

class RegisterFailed extends RegisterState {
  final UserRegiserFailedResult result;

  RegisterFailed(this.result);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RegisterFailed && other.result == result;
  }

  @override
  int get hashCode => result.hashCode;
}
