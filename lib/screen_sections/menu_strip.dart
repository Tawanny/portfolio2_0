import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../helpers/theme_colors.dart';
import 'components/menu_strip_item.dart';

class MenuStrip extends StatelessWidget {
  const MenuStrip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      alignment: Alignment.centerLeft,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            MenuStripItem(
              text: '+2784 714 6843',
              iconUrl: 'assets/icons/call_icon.png',
              onTap: () {},
            ),
            MenuStripItem(
              text: 'dannymutumbami@gmail.com',
              iconUrl: 'assets/icons/mail_icon.png',
              onTap: () {},
            ),
            MenuStripItem(
              text: 'Book a call/Meeting',
              iconUrl: 'assets/icons/Calendly-Logo.png',
              height: 45,
              width: 45,
              onTap: () {},
            ),
            MenuStripItem(
              text: '34 Scott Street, Upington',
              iconUrl: 'assets/icons/address_icon.png',
              height: 40,
              width: 40,
              onTap: () {},
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}


