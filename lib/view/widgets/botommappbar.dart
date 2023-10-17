import 'package:flutter/material.dart';

BottomAppBar bottomnavigationbar(BuildContext context) {
  return BottomAppBar(
    color: const Color.fromARGB(255, 236, 234, 234),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          icon: const Icon(
            Icons.home,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_active),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/userdata');
          },
          icon: const Icon(Icons.person),
        ),
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/messenger');
            },
            icon: const Icon(Icons.chat)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
      ],
    ),
  );
}
