import 'package:flutter/material.dart';
import 'package:motocar_project/view/screens/messenger/chatIn.dart';
import 'package:motocar_project/view/screens/messenger/messenger.dart';
import 'package:motocar_project/view/screens/messenger/widgets/buidChatMessage.dart';
import 'package:motocar_project/view/widgets/gradientappbar.dart';

class ChatScreen extends StatelessWidget {
  final String contactName;

  ChatScreen(this.contactName);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          flexibleSpace: Container(
            decoration: gradientBox(),
          ),
          title: Text(contactName),
        ),
        body: Column(
          children: [
            buildChatMessage(
                "Hola! Mi nombre es Ramiro, ¿aún sigues interesado en el producto?"),
            // Agregar más mensajes de chat
          ],
        ),
        bottomSheet: ChatInputField(),
      ),
    );
  }
}
