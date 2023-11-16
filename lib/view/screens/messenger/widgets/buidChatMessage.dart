import 'package:flutter/material.dart';

Widget buildChatMessage(String message) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Text(message),
      ),
      Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/logomotocar.png',
            width: 220,
            height: 570,
            color: Color.fromARGB(255, 203, 202, 202),
          ),
        ],
      ),
    ],
  );
}
