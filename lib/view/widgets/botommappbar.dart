import 'package:flutter/material.dart';

BottomAppBar bottomnavigationbar() {
  return BottomAppBar(
    color: const Color.fromARGB(255, 236, 234, 234),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.home,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_active),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.chat)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
      ],
    ),
  );
}
