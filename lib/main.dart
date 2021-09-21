import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:photo/bloc/user_bloc.dart';
import 'package:photo/models/user_repository.dart';
import 'package:photo/routes.dart';
import 'package:photo/screens/register_screen.dart';
import 'package:photo/screens/splash_screen.dart';
import 'package:photo/theme.dart';
import 'package:photo/viewmodels/user_viewmodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('en'), Locale('vi')],
      theme: appTheme,
      routes: {
        AppRoute.splash: (context) {
          return BlocProvider<UserBloc>(
              create: (BuildContext context) {
                return UserBloc(UserViewModel(userRepository: UserRepository()))
                  ..add(UserInitEvent());
              },
              child: SplashScreen());
        },
        AppRoute.register: (context) {
          return RegisterScreen();
        }
      },
    );
  }
}
