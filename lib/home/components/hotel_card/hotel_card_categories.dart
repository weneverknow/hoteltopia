import 'package:flutter/material.dart';

import '../../../style.dart';

class HotelCardCategories extends StatelessWidget {
  const HotelCardCategories({
    Key key,
    this.categories,
  }) : super(key: key);
  final String categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: EdgeInsets.only(left: defaultPadding, top: defaultPadding / 2),
      padding: EdgeInsets.symmetric(
          vertical: defaultPadding / 2, horizontal: defaultPadding),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          borderRadius: BorderRadius.circular(22)),
      child: Text(
        categories,
        style: TextStyle(color: Colors.white, fontSize: 11),
      ),
    );
  }
}
