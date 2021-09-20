import 'package:flutter/material.dart';

class UserInformation extends StatelessWidget {
  const UserInformation() : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45), color: Colors.red),
            width: 28,
            height: 28,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pawel Czerwinski",
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                "@pawel_czerwinski",
                style: Theme.of(context).textTheme.subtitle1,
              )
            ],
          )
        ],
      ),
    );
  }
}
