part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent {}

class ChangeToDarkTheme implements ThemeEvent {}

class ChangeToLightTheme implements ThemeEvent {}
