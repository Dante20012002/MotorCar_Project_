import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

bool passwordIcon = true;

TextFormField myCustomTextformFlied(
    {String hintText = 'Texto',
    bool obscuretext = false,
    Icon? prefixIcon,
    IconButton? iconButton,
    bool sufficon = false}) {
  return TextFormField(
    textAlignVertical: TextAlignVertical.center,
    maxLines: 1,
    inputFormatters: [LengthLimitingTextInputFormatter(25)],
    obscureText: obscuretext,
    textAlign: TextAlign.center,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
        suffixIcon: sufficon ? iconButton : SizedBox(),
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))),
        prefixIcon: prefixIcon,
        alignLabelWithHint: true,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 12)),
    autocorrect: true,
  );
}
