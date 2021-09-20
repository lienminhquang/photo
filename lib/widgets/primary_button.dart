import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key key, this.backgroundColor, this.child, this.onpress})
      : super(key: key);
  final Color backgroundColor;
  final Widget child;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 52,
      //width: 167,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.black, width: 2.0)),
      child: TextButton(
          onPressed: onpress,
          child: Center(
            child: child,
          )),
    );
  }
}
