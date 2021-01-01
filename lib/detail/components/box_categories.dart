import 'package:flutter/material.dart';

import '../../style.dart';

class BoxCategories extends StatelessWidget {
  const BoxCategories({
    Key key,
    this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: defaultPadding / 2),
      padding: EdgeInsets.symmetric(
          vertical: defaultPadding / 2, horizontal: defaultPadding),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          borderRadius: BorderRadius.circular(22)),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 11),
      ),
    );
  }
}
