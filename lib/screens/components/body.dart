import 'package:flutter/material.dart';

import 'package:travel_app_ui/size_config.dart';

import 'home_header.dart';
import 'populer_places.dart';
import 'top_travelers.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          const HomeHeader(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          const VerticalSpacing(),
          const PopilarPlaces(),
          const VerticalSpacing(),
          const TopTravelers(),
        ],
      ),
    );
  }
}
