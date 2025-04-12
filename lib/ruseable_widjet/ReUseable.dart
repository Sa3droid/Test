import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reuseable extends StatelessWidget {
  const Reuseable({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: ImageIcon(AssetImage('assets/icons/Union (Stroke).png')),
        ),
        IconButton(
          onPressed: () {},
          icon: ImageIcon(AssetImage('assets/icons/video.png')),
        ),
        IconButton(
          onPressed: () {},
          icon: ImageIcon(AssetImage('assets/icons/More-vertical.png')),
        ),
      ],
      foregroundColor: Colors.white,
      leading: Icon(Icons.arrow_back_ios_outlined),
      titleSpacing: 0,
      backgroundColor: Color(0xff168c4b),
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/unsplash_EGXESvDSAFY.png',
            ),
          ),
          SizedBox(width: 10),
          Text(
            'Ahmed',
            style: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
