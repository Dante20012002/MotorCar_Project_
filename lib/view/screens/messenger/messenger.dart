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
            buildChatListItem("Ramiro", context),
            // Agregar más elementos de chat si es necesario
          ],
        ),
        //bottomNavigationBar: bottomnavigationbar(context),
      ),
    );
  }
}
