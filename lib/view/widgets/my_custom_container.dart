import 'package:flutter/material.dart';

Container customContainer({String texto = 'Texto'}) {
  return Container(
    decoration: const BoxDecoration(
        color: Color(0xFFE8E5E5),
        border: Border(bottom: BorderSide(color: Colors.black))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            texto,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        const Icon(Icons.expand_more)
      ],
    ),
  );
}
