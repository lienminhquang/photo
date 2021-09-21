import 'package:flutter/material.dart';

class AppBottomNavBar extends StatelessWidget {
  final void Function(int) onTab;
  const AppBottomNavBar({Key? key, required this.onTab}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTab,
      currentIndex: 2,
      items: [
        BottomNavigationBarItem(
            icon: Container(
                width: 40,
                height: 40,
                child: Image.asset("assets/images/Toolbar/new.png")),
            label: ""),
        BottomNavigationBarItem(
            icon: Container(
                width: 40,
                height: 40,
                child: Image.asset("assets/images/Toolbar/search.png")),
            label: ""),
        BottomNavigationBarItem(
            icon: Container(
                width: 70,
                height: 40,
                child: Image.asset("assets/images/Toolbar/add.png")),
            label: ""),
        BottomNavigationBarItem(
            icon: Container(
                width: 40,
                height: 40,
                child: Image.asset("assets/images/Toolbar/comment.png")),
            label: ""),
        BottomNavigationBarItem(
            icon: Container(
                width: 40,
                height: 40,
                child: Image.asset("assets/images/Toolbar/bell.png")),
            label: ""),
      ],
    );
  }
}
