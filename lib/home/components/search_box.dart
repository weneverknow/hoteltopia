import 'package:flutter/material.dart';

import '../../style.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: size.width,
      margin: EdgeInsets.symmetric(horizontal: defaultPadding),
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: TextField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.search,
              color: textHighlightColor,
            ),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: 'Search.....',
            hintStyle: TextStyle(
                color: textHighlightColor,
                fontSize: 12,
                fontWeight: FontWeight.w300)),
      ),
    );
  }
}
