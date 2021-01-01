import 'package:flutter/material.dart';

import '../../style.dart';

class DetailRoomType extends StatelessWidget {
  const DetailRoomType({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
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
