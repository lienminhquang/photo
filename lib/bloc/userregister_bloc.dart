import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:photo/models/user_register_result.dart';
import 'package:photo/viewmodels/user_viewmodel.dart';

part 'userregister_event.dart';
part 'userregister_state.dart';

class UserregisterBloc extends Bloc<UserRegisterEvent, UserregisterState> {
  UserregisterBloc(this.userViewModel) : super(UserregisterInitial());

  final UserViewModel userViewModel;

  @override
  Stream<UserregisterState> mapEventToState(
    UserRegisterEvent event,
  ) async* {
    if (event is UserRegisteredEvent) {
      var result = await userViewModel.register(event.username, event.password);
      if (result is UserRegiserFailedResult) {
        yield UserRegisterFailed(result);
      } else {
        yield UserRegisterSuccessed();
      }
    }
  }
}
