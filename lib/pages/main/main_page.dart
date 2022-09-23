import 'package:easy_codebase/component/colors_app.dart';
import 'package:easy_codebase/pages/explore/explore_page.dart';
import 'package:easy_codebase/pages/home/home_page.dart';
import 'package:easy_codebase/pages/main/controller/bottom_nav_controller.dart';
import 'package:easy_codebase/pages/my_booking/my_booking_page.dart';
import 'package:easy_codebase/pages/saved/saved_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../gen/assets.gen.dart';
import '../my_account/my_account_page.dart';
import 'bottom_nav_items.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static final route =
      Handler(handlerFunc: (context, parameters) => const MainPage());

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late final BottomNavigationController bottomNavigationController;

  @override
  void initState() {
    super.initState();
    bottomNavigationController =
        BottomNavigationController.create(initialIndex: 0);
  }

  @override
  void dispose() {
    bottomNavigationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder<int>(
          valueListenable: bottomNavigationController,
          builder: (context, value, child) {
            if (value == 0) {
              return const MyHomePage(title: 'Home');
            } else if (value == 1) {
              return const ExplorePage();
            } else if (value == 2) {
              return const MyBookingPage();
            } else if (value == 3) {
              return const MySavedPage();
            }

            return const MyAccountPage();
          },
        ),
        bottomNavigationBar: ChangeNotifierProvider.value(
            value: bottomNavigationController, child: const BottomNavItems()));
  }
}
