import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'on_board_page.dart';

class ButtonSkip extends StatelessWidget {
  const ButtonSkip({Key? key, this.onSkip}) : super(key: key);
  final Function()? onSkip;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: context.read<SwipeControl>(),
      builder: (context, value, child) {
        final swipeController = context.read<SwipeControl>();
        if (value < (swipeController.totalPage - 1)) {
          /// never can be null
          return child!;
        }
        return const TextButton(onPressed: null, child: SizedBox.shrink());
      },
      child: TextButton(onPressed: onSkip, child: const Text('Skip')),
    );
  }
}
