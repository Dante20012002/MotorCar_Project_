import 'package:flutter/material.dart';
import 'package:motocar_project/view/screens/messenger/chat.dart';

Widget buildChatListItem(String contactName, BuildContext context) {
  return ListTile(
    title: Text(contactName),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChatScreen(contactName)),
      );
    },
  );
}
