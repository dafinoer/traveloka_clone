import 'package:flutter/material.dart';

class AppBarTextFieldButton extends StatelessWidget {
  const AppBarTextFieldButton({
    Key? key,
    required this.title,
    this.leading,
    this.onTap,
  }) : super(key: key);

  final String title;
  final Widget? leading;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.white)),
      child: Row(
        children: [if (leading != null) leading!, Text(title)],
      ),
    );
  }
}
