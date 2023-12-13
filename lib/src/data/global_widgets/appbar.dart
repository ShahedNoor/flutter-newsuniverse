import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarView extends StatefulWidget implements PreferredSizeWidget {
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  const AppBarView({super.key});

  @override
  State<AppBarView> createState() => _AppBarViewState();
}

class _AppBarViewState extends State<AppBarView> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "News Universe",
        style: TextStyle(
            color: Colors.blue,
            fontFamily: GoogleFonts.gugi().fontFamily,
            fontWeight: FontWeight.bold),
      ),
      backgroundColor: Color(0XFF1D1F21),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined))
      ],
    );
  }
}
