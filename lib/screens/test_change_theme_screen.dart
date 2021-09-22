import 'package:flutter/material.dart';
import 'package:photo/bloc/theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo/theme.dart';
import 'package:photo/widgets/primary_button.dart';

class TestChangeThemeScreen extends StatelessWidget {
  const TestChangeThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: PrimaryButton(
                  backgroundColor: AppTheme.blackColor,
                  child: Text("Dark theme",
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: AppTheme.whilteColor)),
                  onpress: () {
                    context.read<ThemeBloc>().add(ChangeToDarkTheme());
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: PrimaryButton(
                  backgroundColor: AppTheme.whilteColor,
                  child: Text("Light theme",
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: AppTheme.blackColor)),
                  onpress: () {
                    context.read<ThemeBloc>().add(ChangeToLightTheme());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
