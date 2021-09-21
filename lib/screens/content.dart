import 'package:flutter/material.dart';
import 'package:photo/screens/discover_screen.dart';
import 'package:photo/widgets/app_bottom_nav_bar.dart';

class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  int _selectedIndex = 0;
  List<Widget> _child = [
    DiscoverScreen(),
    DiscoverScreen(),
    DiscoverScreen(),
    DiscoverScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future(() => false);
      },
      child: Scaffold(
        body: _child[_selectedIndex],
        bottomNavigationBar: AppBottomNavBar(
          onTab: (index) {
            setState(() {
              if (index != 2) _selectedIndex = index > 2 ? index - 1 : index;
            });
          },
        ),
      ),
    );
  }
}
