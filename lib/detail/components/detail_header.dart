import 'package:flutter/material.dart';

import '../../style.dart';
import 'box_categories.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({
    Key key,
    @required this.categories,
  }) : super(key: key);

  final List categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: defaultPadding / 2,
          left: defaultPadding * 2,
          right: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: List.generate(
                categories.length,
                (index) => BoxCategories(
                      text: categories[index],
                    )),
          ),
          IconButton(
              icon: Icon(
                Icons.bookmark,
                color: primaryColor,
                size: 30,
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
