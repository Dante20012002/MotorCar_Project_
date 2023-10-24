import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          onPressed: () {
            Navigator.pushNamed(context, '/notifications');
          },
          icon: const Icon(Icons.notifications_active),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/publicCar');
          },
          icon: const Icon(FontAwesomeIcons.squarePlus),
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
