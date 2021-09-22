import 'package:flutter/material.dart';
import 'package:photo/bloc/theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo/widgets/primary_button.dart';

class TestChangeThemeScreen extends StatelessWidget {
  const TestChangeThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 300,
              child: PrimaryButton(
                backgroundColor: Colors.black,
                child: Text("Use dark",
                    style: Theme.of(context).textTheme.headline2),
                onpress: () {
                  context.read<ThemeBloc>().add(ChangeToDarkTheme());
                },
              ),
            ),
            Container(
              height: 100,
              width: 300,
              child: PrimaryButton(
                backgroundColor: Colors.white,
                child: Text("Use light",
                    style: Theme.of(context).textTheme.headline2),
                onpress: () {
                  context.read<ThemeBloc>().add(ChangeToLightTheme());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
