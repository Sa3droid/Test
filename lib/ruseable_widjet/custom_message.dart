import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_app/ruseable_widjet/message.dart';

class CustomMessage extends StatelessWidget {
  const CustomMessage({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    final EdgeInsets paddings =
        message.image != null ? EdgeInsets.all(0) : EdgeInsets.all(16);
    return Align(
      alignment: message.isSender ? Alignment.topRight : Alignment.topLeft,
      child: Container(
        constraints: BoxConstraints(maxWidth: width * 0.7),
        padding: paddings,
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: message.isSender ? Color(0xff232d36) : Color(0xff168c4b),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            topLeft: message.isSender ? Radius.circular(16) : Radius.zero,
            topRight: message.isSender ? Radius.zero : Radius.circular(16),
          ),
        ),
        child:
            message.image == null
                ? Text(
                  message.text!,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xfff6f0f0),
                  ),
                )
                : Image.asset(message.image!),
      ),
    );
  }
}
