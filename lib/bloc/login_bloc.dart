import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:photo/models/login_result.dart';
import 'package:photo/viewmodels/user_viewmodel.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this.userViewModel) : super(LoginInitial());
  final UserViewModel userViewModel;

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginRequestEvent) {
      var result = await userViewModel.login(event.username, event.password);
      if (result is LoginFailedResult) {
        yield LoginFailed(result);
      } else {
        yield LoginSuccessed();
      }
    }
  }
}
