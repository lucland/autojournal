import 'package:flutter/material.dart';

class Constants {
  static const String EMAILPATTERN =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+";
}

final kTextFormFieldDecoration = InputDecoration(
  labelStyle: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 13.0,
    color: Colors.grey.withOpacity(0.5),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.black),
  ),
);
