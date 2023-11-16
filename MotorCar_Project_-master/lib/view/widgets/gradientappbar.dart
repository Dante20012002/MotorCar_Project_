import 'package:flutter/material.dart';

BoxDecoration gradientBox() {
  return const BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color.fromARGB(255, 22, 0, 0),
        Color.fromARGB(255, 146, 10, 0),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );
}
