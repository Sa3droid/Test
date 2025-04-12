import 'package:flutter/material.dart';
import 'package:whats_app/ruseable_widjet/ReUseable.dart';
import 'package:whats_app/ruseable_widjet/custom_message.dart';
import 'package:whats_app/ruseable_widjet/custom_text_field.dart';
import 'package:whats_app/ruseable_widjet/message.dart';

class ChatScreen extends StatelessWidget implements PreferredSizeWidget {
  ChatScreen({super.key});

  final List<Message> message = [
    Message(text: 'Hello !'),
    Message(isSender: true, text: 'Hello !'),
    Message(
      text:
          'Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!',
    ),
    Message(image: 'assets/images/Message.png'),
    Message(isSender: true, text: 'what a Great Content Tp learn Flutter'),
    Message(text: 'Thanks'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff181818),
        image: DecorationImage(
          image: AssetImage('assets/images/image 17.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: Reuseable(),
        ),
        body: Expanded(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CustomMessage(message: message[index]);
                  },
                  itemCount: message.length,
                ),
              ),
              CustomTextField(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 50);
}
