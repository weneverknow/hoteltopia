import 'package:flutter/material.dart';

import '../../style.dart';

class TittleAndStar extends StatelessWidget {
  const TittleAndStar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      child: Row(
        children: [
          Text(
            'Hotel Transylvania',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
          )
        ],
      ),
    );
  }
}
