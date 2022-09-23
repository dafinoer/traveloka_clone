import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../component/colors_app.dart';
import '../../gen/assets.gen.dart';
import 'controller/bottom_nav_controller.dart';

class BottomNavItems extends StatelessWidget {
  const BottomNavItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentIndex = context.watch<BottomNavigationController>();

    return BottomNavigationBar(
      currentIndex: currentIndex.value,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        context
            .read<BottomNavigationController>()
            .onBottomNavigationChange(value);
      },
      items: [
        BottomNavigationBarItem(
            activeIcon: Assets.icons.homeIconActive
                .image(color: ColorsApp.primaryColor),
            icon: Assets.icons.homeIcon.image(),
            label: 'Home'),
        BottomNavigationBarItem(
            activeIcon: Assets.icons.playIconActive
                .image(color: ColorsApp.primaryColor),
            icon: Assets.icons.playIcon.image(),
            label: 'Explore'),
        BottomNavigationBarItem(
            activeIcon: Assets.icons.notebookIconActive
                .image(color: ColorsApp.primaryColor),
            icon: Assets.icons.notebookIcon.image(),
            label: 'My Booking'),
        BottomNavigationBarItem(
            activeIcon: Assets.icons.bookmarkIconActive
                .image(color: ColorsApp.primaryColor),
            icon: Assets.icons.bookmarkIcon.image(),
            label: 'Saved'),
        const BottomNavigationBarItem(
            activeIcon: Icon(Icons.person, color: ColorsApp.primaryColor),
            icon: Icon(Icons.person),
            label: 'My Account')
      ],
    );
  }
}
