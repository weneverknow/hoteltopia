import 'package:flutter/material.dart';

import '../../../style.dart';

class PosterPrice extends StatelessWidget {
  const PosterPrice({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 120,
      margin: EdgeInsets.only(top: 125, left: (size.width * 0.5) - 90),
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22), topRight: Radius.circular(22))),
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: defaultPadding / 2),
      child: Text(
        '\$23,456',
        style: TextStyle(color: primaryColor, fontWeight: FontWeight.w700),
      ),
    );
  }
}
