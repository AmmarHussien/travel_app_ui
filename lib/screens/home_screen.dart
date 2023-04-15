import 'package:flutter/material.dart';
import 'package:travel_app_ui/constants.dart';
import 'package:travel_app_ui/screens/components/body.dart';
import 'package:travel_app_ui/size_config.dart';

import '../components/custom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: const CustomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
          color: kIconColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: ClipOval(child: Image.asset('assets/icons/chat.svg')),
        ),
      ],
    );
  }
}
