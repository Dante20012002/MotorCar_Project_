import 'package:flutter/material.dart';
import 'package:motocar_project/view/screens/messenger/chat.dart';
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
      home: MyPurchaseScreen(),
    );
  }
}

class MyPurchaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyChatScreen(),
    );
  }
}

class MyChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }

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
}

class ChatInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Escribe un mensaje...",
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              // Agregar lógica para enviar el mensaje
            },
          ),
        ],
      ),
    );
  }
}
