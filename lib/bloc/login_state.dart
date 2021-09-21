part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginSuccessed extends LoginState {}

class LoginFailed extends LoginState {
  final LoginFailedResult result;

  LoginFailed(this.result);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginFailed && other.result == result;
  }

  @override
  int get hashCode => result.hashCode;
}
