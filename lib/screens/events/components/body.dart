import 'package:flutter/material.dart';
import 'package:travel_app_ui/components/place_card.dart';
import 'package:travel_app_ui/constants.dart';
import 'package:travel_app_ui/models/travel_spot.dart';
import 'package:travel_app_ui/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(
            kDefaultPadding,
          ),
        ),
        child: SingleChildScrollView(
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 20,
            children: [
              ...List.generate(
                travelSpots.length,
                (index) => PlaceCard(
                  travelSpot: travelSpots[index],
                  isFullCard: true,
                  press: () {},
                ),
              ),
              Container(
                height: getProportionateScreenWidth(310),
                width: getProportionateScreenWidth(158),
                decoration: BoxDecoration(
                  color: const Color(0xFF6A6C93).withOpacity(0.09),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 2,
                    color: const Color(0xFFEBE8F6),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: getProportionateScreenWidth(53),
                      width: getProportionateScreenWidth(53),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              60,
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: getProportionateScreenWidth(35),
                        ),
                      ),
                    ),
                    const VerticalSpacing(
                      of: 10,
                    ),
                    const Text(
                      'Add New Place',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
