import 'package:flutter/cupertino.dart';

import '../../gen/assets.gen.dart';

class BoardView extends StatelessWidget {
  const BoardView({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.asset,
    this.bottom,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final Widget asset;
  final Widget? bottom;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(title),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 4.0, left: 16.0, right: 16.0),
            child: Text(subTitle)),
        asset,
        if (bottom != null) bottom!,
      ],
    );
  }
}
