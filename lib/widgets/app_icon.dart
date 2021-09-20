import 'dart:math';

import 'package:flutter/material.dart';

class AppIconComponent extends StatelessWidget {
  final Color beginColor;
  final Color endColor;
  const AppIconComponent({
    Key key,
    this.beginColor,
    this.endColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.skewX(pi / 4),
      child: Container(
        width: 38 - 11.26,
        height: 11.26,
        //color: this.color,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.centerLeft,
            end: FractionalOffset.centerRight,
            colors: [beginColor, endColor],
          ),
        ),
      ),
    );
  }
}

class AppIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 38,
      child: Stack(
        children: [
          Container(
            child: Stack(
              children: [
                AppIconComponent(
                  beginColor: Color(0XFFFF11A8).withOpacity(0.8),
                  endColor: Color(0XFFFFF0BB7).withOpacity(1),
                ),
                Transform(
                  transform: Matrix4.rotationZ(-pi / 2) * Matrix4.rotationY(pi),
                  child: AppIconComponent(
                    beginColor: Color(0XFFFF11A8).withOpacity(0.8),
                    endColor: Color(0XFFFF3B32).withOpacity(1),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Transform.rotate(
              angle: pi,
              child: Container(
                child: Stack(
                  children: [
                    AppIconComponent(
                      beginColor: Color(0XFF000000),
                      endColor: Color(0XFF000000),
                    ),
                    Transform(
                      transform:
                          Matrix4.rotationZ(-pi / 2) * Matrix4.rotationY(pi),
                      child: AppIconComponent(
                        beginColor: Color(0XFF000000),
                        endColor: Color(0XFF000000),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
