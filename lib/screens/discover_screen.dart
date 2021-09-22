import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo/bloc/photo_bloc.dart';
import 'package:photo/bloc/user_bloc.dart';
import 'package:photo/models/user.dart';
import 'package:photo/theme.dart';
import 'package:photo/widgets/primary_button.dart';
import 'package:photo/widgets/user_infomation.dart';

class DiscoverScreen extends StatelessWidget {
  DiscoverScreen() : super();

  @override
  Widget build(BuildContext context) {
    final int len = 5;
    final _items = List<Widget>.generate(len, (index) {
      if (index == 0) {
        return Container(
          margin: EdgeInsets.fromLTRB(0, 60, 0, 32),
          child: Text(
            AppLocalizations.of(context)!.discoverHeader,
            style: Theme.of(context).textTheme.headline1,
          ),
        );
      } else if (index == 1) {
        return WhatIsNewToday();
      } else if (index == 2) {
        return BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state is UserLoaded) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                child: UserInformation(state.user),
              );
            }
            return Container();
          },
        );
      } else if (index == len - 1) {
        return Container(
          margin: EdgeInsets.fromLTRB(0, 23, 0, 32),
          child: PrimaryButton(
              backgroundColor: AppTheme.whilteColor,
              child: Text(
                AppLocalizations.of(context)!.seeMore,
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: AppTheme.blackColor),
              ),
              onpress: () {}),
        );
      }

      return BrowseAll();
    });
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return _items[index];
                })));
  }
}

class WhatIsNewToday extends StatelessWidget {
  const WhatIsNewToday({Key? key}) : super(key: key);

  Widget buildLoadedState(PhotoLoaded state, BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
            child: Text(
              AppLocalizations.of(context)!.whatIsNewToday,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Image.asset(
            state.news[0].path,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoBloc, PhotoState>(
      builder: (context, state) {
        if (state is PhotoLoaded && state.news.isNotEmpty) {
          return buildLoadedState(state, context);
        }
        return Container();
      },
    );
  }
}

class BrowseAll extends StatelessWidget {
  BrowseAll({Key? key}) : super(key: key);

  Widget buildLoadedState(PhotoLoaded state, BuildContext context) {
    final _images = state.photo;
    final list1 = List<Widget>.generate(_images.length ~/ 2, (index) {
      return Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
        child: Image.asset(
          _images[index * 2].path,
          fit: BoxFit.cover,
        ),
      );
    });
    final List<Widget> list2 = [];
    for (int i = 1; i < _images.length; i += 2) {
      list2.add(Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
        child: Image.asset(
          _images[i].path,
          fit: BoxFit.cover,
        ),
      ));
    }
    return Container(
      margin: EdgeInsets.fromLTRB(0, 32, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
            child: Text(
              AppLocalizations.of(context)!.browseAll,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: list1,
                ),
              ),
              Container(
                width: 9,
              ),
              Expanded(
                child: Column(
                  children: list2,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoBloc, PhotoState>(builder: (context, state) {
      if (state is PhotoLoaded) {
        return buildLoadedState(state, context);
      }
      return Container();
    });
  }
}
