
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';
import 'nav_item.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(
                icon: 'assets/icons/calendar.svg',
                name: 'Calender',
                press: () {},
              ),
              NavItem(
                icon: 'assets/icons/chat.svg',
                name: 'Chat',
                press: () {},
              ),
              NavItem(
                icon: 'assets/icons/friendship.svg',
                name: 'Friends',
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
