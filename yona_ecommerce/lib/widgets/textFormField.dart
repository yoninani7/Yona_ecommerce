import 'package:flutter/material.dart';

Widget textFormField(String innertext) {
  return TextFormField(
    readOnly: false,
    onTap: () {},
    decoration: InputDecoration(
      hintText: innertext,
      hintStyle: const TextStyle(color: Colors.black),
      alignLabelWithHint: true,
      contentPadding: const EdgeInsets.only(top: 5.0, left: 20.0, right: 40.0),
    ),
  );
}
