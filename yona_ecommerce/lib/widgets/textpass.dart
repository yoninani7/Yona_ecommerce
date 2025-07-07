import 'package:flutter/material.dart';

Widget textpass(String innerText, IconData icon,{FormFieldSetter<String>? onsaved}) {
  return TextFormField(
    onTap: () {},
    onSaved: onsaved,
    obscureText: true,
    decoration: InputDecoration(
      hintText: innerText,
      hintStyle: const TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w400,
      ),
      filled: true,
      fillColor: const Color.fromARGB(43, 247, 238, 124),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0), // More rounded corners
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
      prefixIcon: Icon(
        Icons.key_outlined,
        color: Color(0xFF013968), // Vibrant icon color
      ),
      suffixIcon: IconButton(
        icon: Icon(Icons.visibility_off_outlined, color: Color(0xFF013968)),
        onPressed: () {},
      ),
    ),
  );
}
