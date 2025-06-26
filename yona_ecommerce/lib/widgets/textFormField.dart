import 'package:flutter/material.dart';

Widget textFormField(String innertext) {
  return TextFormField(
    readOnly: false,
    onTap: () {},
    decoration: InputDecoration(
      hintText: innertext,
      hintStyle: const TextStyle(color: Colors.grey),
      filled: true,
      fillColor: const Color.fromARGB(255, 255, 255, 255),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: Colors.blue, width: 2.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 20.0,
      ),
      prefixIcon: Icon(Icons.assignment_ind_outlined, color: Colors.grey),
    ),
  );
}
