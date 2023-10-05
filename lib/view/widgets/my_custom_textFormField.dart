import 'package:flutter/material.dart';

TextFormField myCustomTextformFlied(
    {String hintText = 'Texto', bool obscuretext = false, Icon? prefixIcon}) {
  return TextFormField(
    obscureText: obscuretext,
    textAlign: TextAlign.center,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))),
        prefixIcon: prefixIcon,
        alignLabelWithHint: true,
        hintStyle: const TextStyle(color: Colors.grey)),
    autocorrect: true,
  );
}
