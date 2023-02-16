import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/my_message_card.dart';
import 'package:whatsapp_clone/utils/colors.dart';

import '../utils/info.dart';
import 'sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          //MyMessageCard
          return MyMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        }
        //SenderMessageCard
        return SenderMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
      },
    );
  }
}
