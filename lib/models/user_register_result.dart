import 'package:flutter/material.dart';

@immutable
abstract class UserRegisterResult {}

class UserRegiserFailedResult implements UserRegisterResult {
  final String message;

  UserRegiserFailedResult(this.message);
}

class UserRegiserSuccessedResult implements UserRegisterResult {}
