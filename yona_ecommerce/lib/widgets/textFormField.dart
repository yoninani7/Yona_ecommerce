import 'package:flutter/material.dart';

Widget textFormField(String innerText, IconData icon, {FormFieldSetter<String>? onsaved}) {
  return TextFormField(
    onTap: () {},
    onSaved: onsaved,
    decoration: InputDecoration(
      hintText: innerText,
      hintStyle: const TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w400,
      ),
      filled: true,
      fillColor: const Color.fromARGB(43, 247, 238, 124),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(
          color: Colors.grey.shade300,
          width: 1.5,
        ), // Subtle border
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(
          color: const Color.fromARGB(211, 224, 202, 7),
          width: 2.0,
        ), // Color change on focus
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 20.0,
      ),
      prefixIcon: Icon(icon, color: Color(0xFF013968)),
    ),
  );
}
