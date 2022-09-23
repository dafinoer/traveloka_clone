import 'package:easy_codebase/component/colors_app.dart';
import 'package:easy_codebase/pages/onboard/on_board_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BulletIndicatorWidget extends StatelessWidget {
  const BulletIndicatorWidget({Key? key, required this.totalPageView})
      : super(key: key);
  final int totalPageView;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: context.read<SwipeControl>(),
      builder: (context, value, child) => Row(
        children: List.generate(
          totalPageView,
          (index) => Container(
            width: 10.0,
            height: 10.0,
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: value == index ? ColorsApp.primaryColor : Colors.grey),
          ),
        ),
      ),
    );
  }
}
