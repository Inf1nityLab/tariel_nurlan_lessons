
import 'package:flutter/material.dart';

Widget iconButtonWidget(IconData iconData, Function() onPressed){
  return IconButton(onPressed: onPressed, icon: Icon(iconData));
}