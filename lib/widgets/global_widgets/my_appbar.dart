import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  final dynamic leadingIconButton;
  final dynamic actionIconButton;

  const MyAppBar(
      {super.key, this.leadingIconButton, required this.actionIconButton});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "News Universe",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      leading: widget.leadingIconButton,
      actions: [
        widget.actionIconButton,
      ],
    );
  }
}
