import 'package:flutter/material.dart';
import 'package:travel_app_ui/components/custom_nav_bar.dart';
import 'package:travel_app_ui/screens/events/components/body.dart';

import '../../components/app_bar.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'New Events'),
      body: const Body(),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
