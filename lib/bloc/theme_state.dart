part of 'theme_bloc.dart';

@immutable
abstract class ThemeState {}

class ThemeInitial extends ThemeState {
  final ThemeData theme;

  ThemeInitial(this.theme);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ThemeInitial && other.theme == theme;
  }

  @override
  int get hashCode => theme.hashCode;
}
