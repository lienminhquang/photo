import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:photo/models/user_register_result.dart';
import 'package:photo/viewmodels/user_viewmodel.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(this.userViewModel) : super(RegisterInitial());

  final UserViewModel userViewModel;

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    if (event is RegisteredEvent) {
      var result = await userViewModel.register(event.username, event.password);
      if (result is UserRegiserFailedResult) {
        yield RegisterFailed(result);
      } else {
        yield RegisterSuccessed();
      }
    }
  }
}
