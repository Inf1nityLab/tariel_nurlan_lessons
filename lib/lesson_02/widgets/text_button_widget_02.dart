import 'package:flutter/material.dart';

import '../constants/colors.dart';

Widget textButtonWidget(String text) {
  return TextButton(
    onPressed: () {},
    child: Text(
      text,
      style: const TextStyle(
          fontSize: 20, color: grey, fontWeight: FontWeight.w700),
    ),
  );
}
