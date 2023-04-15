
import 'package:flutter/material.dart';

import '../../../components/section_title.dart';
import '../../../constants.dart';
import '../../../models/user.dart';
import '../../../size_config.dart';
import 'user_card.dart';

class TopTravelers extends StatelessWidget {
  const TopTravelers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Top Travelers on Spark',
          press: () {},
        ),
        const VerticalSpacing(
          of: 10,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(
              kDefaultPadding,
            ),
          ),
          padding: EdgeInsets.all(
            getProportionateScreenWidth(24),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [kDefualtShadow],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                topTravelers.length,
                (index) => UserCard(
                  user: topTravelers[index],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}