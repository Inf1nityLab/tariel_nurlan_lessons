
import 'package:flutter/material.dart';
import 'package:tar_nur_lessons/lesson_01/constants/colors.dart';

Widget textFieldWidget(String text, IconData iconData, IconData? eyes, bool show){
  return  TextField(
    obscureText: show,
    decoration: InputDecoration(
        filled: true,
        fillColor: white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        contentPadding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        labelText: text,
        prefixIcon: Icon(iconData),
        suffixIcon: IconButton(onPressed: (){}, icon:  Icon(eyes))
    ),
  );
}