import 'package:flutter/material.dart';
import 'package:photo/models/user.dart';

@immutable
abstract class UserLoginResult {}

class UserLoginFailedResult implements UserLoginResult {
  final String message;

  UserLoginFailedResult(this.message);
}

class UserLoginSuccessedResult implements UserLoginResult {
  final User user;

  UserLoginSuccessedResult(this.user);
}
