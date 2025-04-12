import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: TextStyle(color: Colors.white, fontSize: 20),
              cursorColor: Color(0xffffffff),
              decoration: InputDecoration(
                hintText: 'Type a Message ...',
                hintStyle: GoogleFonts.inter(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(500),
                  borderSide: BorderSide(color: Color(0xff168c4b)),
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send, color: Colors.white),
                ),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt_outlined),
                  style: IconButton.styleFrom(foregroundColor: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(500),
                  borderSide: BorderSide(color: Color(0xff168c4b)),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mic, color: Colors.white),
            style: IconButton.styleFrom(
              backgroundColor: Color(0xff168c4b),
              maximumSize: Size(90, 90),
            ),
          ),
        ],
      ),
    );
  }
}
