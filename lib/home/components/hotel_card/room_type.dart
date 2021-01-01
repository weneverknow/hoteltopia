import 'package:flutter/material.dart';

import '../../../style.dart';

class RoomType extends StatelessWidget {
  const RoomType({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      child: Row(
        children: [
          Text(
            'Studio Apartment',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
