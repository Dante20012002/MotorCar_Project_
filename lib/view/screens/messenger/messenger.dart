import 'package:flutter/material.dart';
import 'package:motocar_project/view/screens/messenger/chat.dart';
import 'package:motocar_project/view/screens/messenger/widgets/buildChatList.dart';
import 'package:motocar_project/view/widgets/botommappbar.dart';
import 'package:motocar_project/view/widgets/gradientappbar.dart';

class MessengerView extends StatefulWidget {
  const MessengerView({super.key});

  @override
  State<MessengerView> createState() => _MessengerViewState();
}

class _MessengerViewState extends State<MessengerView> {
  bool hasNewMessage = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          flexibleSpace: Container(
            decoration: gradientBox(),
          ),
          title: const Text("Mensajes"),
        ),
        body: ListView(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  hasNewMessage = false;
                });
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ChatScreen("Ramiro"),
                ));
              },
              child: buildChatListItem("Ramiro", context, hasNewMessage),
            ),
          ],
        ),
        bottomNavigationBar: bottomnavigationbar(context),
      ),
    );
  }
}

Widget buildChatListItem(
    String name, BuildContext context, bool hasNewMessage) {
  return ListTile(
    title: Row(
      children: [
        Icon(
          Icons.person_outline_rounded,
          color: Colors.grey,
          size: 40,
        ),
        SizedBox(width: 20),
        Text(
          name,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Spacer(),
        if (hasNewMessage)
          const Icon(
            Icons.notification_important,
            color: Colors.red,
          ),
      ],
    ),
  );
}

void main() {
  runApp(const MaterialApp(
    home: MessengerView(),
  ));
}
