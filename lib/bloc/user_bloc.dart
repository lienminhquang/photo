import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:photo/models/user.dart';
import 'package:photo/viewmodels/user_viewmodel.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this.userViewModel) : super(UserInitial());
  final UserViewModel userViewModel;

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is UserInitEvent) {
      yield UserInitial();
      var rs = await userViewModel.getCurrentUser();
      yield UserLoaded(rs!);
    }
  }
}
