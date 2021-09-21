import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:photo/models/user.dart';
import 'package:photo/models/user_register_result.dart';
import 'package:photo/viewmodels/user_viewmodel.dart';

part 'prev_user_event.dart';
part 'prev_user_state.dart';

class PrevUserBloc extends Bloc<PrevUserEvent, PrevUserState> {
  PrevUserBloc(this.userViewModel) : super(PrevUserInitial());
  final UserViewModel userViewModel;

  @override
  Stream<PrevUserState> mapEventToState(
    PrevUserEvent event,
  ) async* {
    if (event is PrevUserInitEvent) {
      yield PrevUserInitial();
      var prevUser = await userViewModel.getPreviousLoginedUser();
      yield PrevUserLoaded(prevUser);
    }
  }
}
