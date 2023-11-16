import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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

SizedBox elevatedButton(
    {Future? future,
    BuildContext? context,
    String rute = '/',
    Icon? icon,
    String texto = 'Texto',
    double sizew = 300}) {
  return SizedBox(
    width: sizew,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 230, 230, 230)),
      ),
      onPressed: () {
        context != null ? Navigator.pushNamed(context!, rute) : null;
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon!,
          Text(
            texto,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    ),
  );
}
