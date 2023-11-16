import 'package:flutter/material.dart';
import 'package:motocar_project/view/screens/messenger/chatIn.dart';
import 'package:motocar_project/view/screens/messenger/widgets/buidChatMessage.dart';
import 'package:motocar_project/view/widgets/gradientappbar.dart';

class ChatScreen_1 extends StatefulWidget {
  const ChatScreen_1({super.key});
  @override
  State<ChatScreen_1> createState() => _ChatScreen_1State();
}

class _ChatScreen_1State extends State<ChatScreen_1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          flexibleSpace: Container(
            decoration: gradientBox(),
          ),
          title: Text('Chat de Soporte'),
        ),
        body: Column(
          children: [
            buildChatMessage(
                "¡Hola, me llamo Carmela! Soy la asistente virtual de MotorCar ¿Cómo puedo ayudarte?"),
          ],
        ),
        bottomSheet: ChatInputField(),
      ),
    );
  }
}
