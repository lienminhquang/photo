import 'package:flutter/material.dart';
import 'package:photo/models/user.dart';

class UserInformation extends StatelessWidget {
  const UserInformation(this.user) : super();
  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 28,
            height: 28,
            margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: Image.asset(user.imagePath),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                user.tag,
                style: Theme.of(context).textTheme.subtitle1,
              )
            ],
          )
        ],
      ),
    );
  }
}
