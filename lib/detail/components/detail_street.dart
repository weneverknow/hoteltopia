import 'package:flutter/material.dart';

import '../../style.dart';

class DetailStreet extends StatelessWidget {
  const DetailStreet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: defaultPadding / 2, horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '21, GOA Street, Singapore',
            style: TextStyle(
                color: Color.fromARGB(255, 173, 173, 173), fontSize: 10),
          ),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor,
            ),
            alignment: Alignment.center,
            child: Icon(
              Icons.send,
              size: 12,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
