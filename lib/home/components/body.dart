import 'package:flutter/material.dart';
import 'package:hoteltopia/style.dart';

import 'header.dart';
import 'hotel_card.dart';
import 'search_box.dart';

class Body extends StatelessWidget {
  List cat = ['furniture', 'interior'];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(size: size),
        SearchBox(size: size),
        HotelCard(
          size: size,
          cat: cat,
        )
      ],
    );
  }
}
