import 'package:flutter/material.dart';

import '../../../style.dart';

class HotelCardIcons extends StatelessWidget {
  const HotelCardIcons({
    Key key,
    this.icon,
    this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 28,
          color: primaryColor,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 11),
        )
      ],
    );
  }
}
