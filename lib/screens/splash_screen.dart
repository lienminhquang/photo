import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo/flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo/bloc/prev_user_bloc.dart';
import 'package:photo/routes.dart';
import 'package:photo/widgets/app_icon.dart';
import 'package:photo/widgets/primary_button.dart';
import 'package:photo/widgets/user_infomation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen() : super();

  Widget _buildUserInfomationWidget() {
    return BlocBuilder<PrevUserBloc, PrevUserState>(
      builder: (context, state) {
        if (state is PrevUserLoaded && state.user != null) {
          return Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
              child: UserInformation(state.user!));
        }
        return Container();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            _buildUserInfomationWidget(),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: PrimaryButton(
                  backgroundColor: Color(0XFFFFFFFF),
                  onpress: () {
                    Navigator.of(context).pushNamed(AppRoute.login);
                  },
                  child: Text(
                    AppLocalizations.of(context)!.loginButton,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                )),
                Container(
                  width: 12,
                ),
                Expanded(
                    child: PrimaryButton(
                  backgroundColor: Color(0XFF000000),
                  onpress: () {
                    Navigator.of(context).pushNamed(AppRoute.register);
                  },
                  child: Text(
                    AppLocalizations.of(context)!.registerButton,
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: Color(0XFFFFFFFF)),
                  ),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
