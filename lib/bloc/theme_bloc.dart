import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:photo/theme.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(ThemeState initialState) : super(initialState);

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    if (event is ChangeToDarkTheme) {
      yield ThemeInitial(AppTheme.darkTheme);
    }
    if (event is ChangeToLightTheme) {
      yield ThemeInitial(AppTheme.lightTheme);
    }
  }
}
