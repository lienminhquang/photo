import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo/models/user.dart';
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
        return Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          child: UserInformation(
            User(
                name: "Pawel Czerwinski",
                tag: "@pawel_czerwinski",
                userName: "the_jane",
                imagePath: "assets/images/avar1.png"),
          ),
        );
      } else if (index == len - 1) {
        return Container(
          margin: EdgeInsets.fromLTRB(0, 23, 0, 32),
          child: PrimaryButton(
              backgroundColor: Color(0XFFFFFFFF),
              child: Text(
                AppLocalizations.of(context)!.seeMore,
                style: Theme.of(context).textTheme.headline2,
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

  @override
  Widget build(BuildContext context) {
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
            "assets/images/image1.png",
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}

class BrowseAll extends StatelessWidget {
  BrowseAll({Key? key}) : super(key: key);

  final List<String> _images = [
    "assets/images/image2.png",
    "assets/images/image3.png",
    "assets/images/image4.png",
    "assets/images/image5.png",
    "assets/images/image6.png",
    "assets/images/image7.png",
    "assets/images/image8.png",
    "assets/images/image9.png",
    "assets/images/image10.png",
    "assets/images/image11.png",
  ];

  @override
  Widget build(BuildContext context) {
    final list1 = List<Widget>.generate(_images.length ~/ 2, (index) {
      return Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
        child: Image.asset(
          _images[index * 2],
          fit: BoxFit.cover,
        ),
      );
    });
    final list2 = List<Widget>.generate(_images.length ~/ 2, (index) {
      return Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
        child: Image.asset(
          _images[index * 2 + 1],
          fit: BoxFit.cover,
        ),
      );
    });

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
}
