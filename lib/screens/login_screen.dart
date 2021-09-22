import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo/flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter/material.dart';
import 'package:photo/bloc/login_bloc.dart';
import 'package:photo/bloc/prev_user_bloc.dart';
import 'package:photo/bloc/register_bloc.dart';
import 'package:photo/routes.dart';
import 'package:photo/widgets/app_text_form_field.dart';
import 'package:photo/widgets/primary_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 13, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: Transform.rotate(
                  angle: pi / 4,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.undo_outlined,
                        size: 20,
                      ),
                    ),
                  )),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 32),
              child: Text(
                AppLocalizations.of(context)!.loginHeader,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              child: AppTextFormField(
                controller: _usernameController,
                hintText: AppLocalizations.of(context)!.usernameHint,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppLocalizations.of(context)!.pleaseEnterUsername;
                  }
                  return null;
                },
              ),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
            ),
            Container(
              child: AppTextFormField(
                controller: _passwordController,
                hintText: AppLocalizations.of(context)!.passwordHint,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppLocalizations.of(context)!.pleaseEnterPassword;
                  }
                  return null;
                },
              ),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
            ),
            BlocListener<LoginBloc, LoginState>(
              listener: (context, state) {
                if (state is LoginSuccessed) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, AppRoute.content, (route) => false);
                } else if (state is LoginFailed) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.result.message)));
                }
              },
              child: PrimaryButton(
                  backgroundColor: Color(0XFF000000),
                  child: Text(
                    AppLocalizations.of(context)!.loginButton,
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: Color(0XFFFFFFFF)),
                  ),
                  onpress: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<LoginBloc>().add(LoginRequestEvent(
                          _usernameController.text, _usernameController.text));
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
