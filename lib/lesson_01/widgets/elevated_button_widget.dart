import 'package:flutter/material.dart';
import 'package:tar_nur_lessons/lesson_01/constants/colors.dart';

Widget elevatedButtonWidget(String text) {
  return SizedBox(
    width: double.infinity,
    height: 70,
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: indigo),
      child:  Text(
        text,
        style: const TextStyle(fontSize: 20, color: white, fontWeight: FontWeight.w700),
      ),
    ),
  );
}
