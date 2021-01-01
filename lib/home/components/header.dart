import 'package:flutter/material.dart';

import '../../style.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding),
        child: Stack(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: size.width,
              child: Icon(
                Icons.menu,
                color: bgColor,
                size: 28,
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: Text(
                'Best Deals',
                style: TextStyle(
                    color: bgColor, fontWeight: FontWeight.w700, fontSize: 18),
              ),
            )
          ],
        ));
  }
}
