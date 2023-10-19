import 'package:flutter/material.dart';

Widget buildChatMessage(String message) {
  return ListTile(
    title: Container(
      padding: const EdgeInsets.all(12),
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Text(message),
    ),
  );
}
