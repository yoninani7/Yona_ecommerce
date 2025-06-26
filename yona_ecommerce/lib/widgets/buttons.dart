import 'package:flutter/material.dart';

Widget button(TextEditingController controller,String innertext) {
  return TextFormField(
    controller: controller,
    readOnly: false,
    onTap: () {},
    decoration:  InputDecoration(
      hintText: innertext,
      hintStyle: const TextStyle(
        color: Colors.black,
      ),
      border: InputBorder.none,
      enabledBorder: InputBorder.none,
      alignLabelWithHint: true,
      contentPadding:const EdgeInsets.only(top: 5.0, left: 20.0, right: 40.0),
    ),
  );

}  
