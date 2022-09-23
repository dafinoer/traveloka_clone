import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'on_board_page.dart';

class ButtonNext extends StatelessWidget {
  const ButtonNext({Key? key, this.onPressNext}) : super(key: key);
  final Function()? onPressNext;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: context.read<SwipeControl>(),
      builder: (context, value, child) {
        final swipeController = context.read<SwipeControl>();
        if (value < (swipeController.totalPage - 1)) {
          return child!;
        }
        return const TextButton(onPressed: null, child: SizedBox.shrink());
      },
      child: TextButton(onPressed: onPressNext, child: const Text('Next')),
    );
  }
}
