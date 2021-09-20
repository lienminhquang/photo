import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo/widgets/app_icon.dart';
import 'package:photo/widgets/primary_button.dart';
import 'package:photo/widgets/user_infomation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/splash_background.png"))),
        child: Column(
          children: [
            Expanded(
                child: Center(
                    child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppIcon(),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Text("photo",
                        style: Theme.of(context).textTheme.headline1)),
              ],
            ))),
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                child: UserInformation()),
          ],
        ),
      ),
    );
  }
}