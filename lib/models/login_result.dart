import 'package:flutter/material.dart';
import 'package:photo/models/user.dart';

@immutable
abstract class LoginResult {}

class LoginFailedResult implements LoginResult {
  final String message;

  LoginFailedResult(this.message);
}

class LoginSuccessedResult implements LoginResult {
  final User user;

  LoginSuccessedResult(this.user);
}
