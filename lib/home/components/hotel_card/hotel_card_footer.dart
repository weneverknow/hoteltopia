import 'package:flutter/material.dart';

import '../../../style.dart';
import 'hotel_card_icons.dart';

class HotelCardFooter extends StatelessWidget {
  const HotelCardFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HotelCardIcons(
            icon: Icons.hotel,
            text: '3 Bed',
          ),
          HotelCardIcons(
            icon: Icons.hot_tub,
            text: '2 Bath',
          ),
          HotelCardIcons(
            icon: Icons.directions_car,
            text: 'Parking',
          )
        ],
      ),
    );
  }
}
