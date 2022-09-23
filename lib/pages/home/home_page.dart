import 'package:easy_codebase/component/colors_app.dart';
import 'package:easy_codebase/presentations/city_groups/city_group_cubit.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../gen/assets.gen.dart';
import '../../presentations/coupon_hotels/coupon_hotels_cubit.dart';
import '../../widgets/appbar_textfield_button.dart';

part '_main_menu_home_widget.dart';

part '_card_item.dart';

part '_hotel_items.dart';

part '_chip_menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.primaryColor,
        title: const AppBarTextFieldButton(
            title: 'Search Flight', leading: Icon(Icons.search)),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
          IconButton(
              onPressed: () {},
              icon: Assets.icons.commentIcon.image(color: Colors.white))
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        children: const [
          _MainMenuHomeWidget(),
          _HotelItems(
              title: 'Top Hotel Picks for You',
              subtitle: 'Inspired by accommodations you explore'),
          _ChipMenu(),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
